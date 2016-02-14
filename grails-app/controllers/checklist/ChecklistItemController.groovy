package checklist

import org.springframework.dao.DataIntegrityViolationException

class ChecklistItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [checklistItemInstanceList: ChecklistItem.list(params), checklistItemInstanceTotal: ChecklistItem.count()]
    }
	
	def querylist() {
		render (view:'querylist', model:[checklistItemInstance: new ChecklistItem(params)])
		
	}
    
    def querymain() {
        render (view:'querymain')
    }
	
	def execquerylist() {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		
		ChecklistQuery cquery = new ChecklistQuery();
		bindData(cquery, params);
		
		def criteria = ChecklistItem.createCriteria();
		
		def results = criteria {
			and {
				if(cquery.cplusplus)
				{
					eq('cplusplus', cquery.cplusplus)
				}
				
				if (cquery.java)
				{
					eq('java', cquery.java)
				}
				
				if (cquery.script)
				{
					eq('script', cquery.script)
				}
				if (cquery.application)
				{
					eq('application', cquery.application)
				}
				if (cquery.others)
				{
					eq('others', cquery.others)
				}
				
				if (cquery.products)
				{
					eq('products', cquery.products)
				}
				if (cquery.subsystem)
				{
					eq('subsystem', cquery.subsystem)
				}
				
				or {
					
					if (cquery.keyWord)
					{
						like('itemInfo', '%'+cquery.keyWord+'%')
						like('itemDescripton', '%'+cquery.keyWord+'%')
					}
				}
				
				if (cquery.weight)
				{
					eq('weight', cquery.weight)
				}
				if (cquery.requirement)
				{
					eq('requirement', cquery.requirement)
				}
				if (cquery.hld)
				{
					eq('hld', cquery.hld)
				}
				if (cquery.design)
				{
					eq('design', cquery.design)
				}
				if (cquery.designReview)
				{
					eq('designReview', cquery.designReview)
				}
				if (cquery.designInspection)
				{
					eq('designInspection', cquery.designInspection)
				}
				if (cquery.coding)
				{
					eq('coding', cquery.coding)
				}
				if (cquery.devTest)
				{
					eq('devTest', cquery.devTest)
				}
				if (cquery.demo)
				{
					eq('demo', cquery.demo)
				}
				if (cquery.contributor)
				{
					eq('contributor', cquery.contributor)
				}
//				if (cquery.approved)
//				{
//					eq('approved', cquery.approved)
//				}
				eq('approved', cquery.approved)
			}
			order("weight", "desc")
			
		}
		render (view:'execquerylist', model:[checklistItemInstanceList: results, checklistItemInstanceTotal: results.size()])
		
//        [checklistItemInstanceList: ChecklistItem.list(params), checklistItemInstanceTotal: ChecklistItem.count()]
		}

    def create() {
        [checklistItemInstance: new ChecklistItem(params)]
    }

    def save() {
        def checklistItemInstance = new ChecklistItem(params)
		checklistItemInstance.contributor = session?.user?.username;
        if (!checklistItemInstance.save(flush: true)) {
            render(view: "create", model: [checklistItemInstance: checklistItemInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), checklistItemInstance.id])
        redirect(action: "show", id: checklistItemInstance.id)
    }

    def show() {
        def checklistItemInstance = ChecklistItem.get(params.id)
        if (!checklistItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
            redirect(action: "list")
            return
        }

        [checklistItemInstance: checklistItemInstance]
    }

    def edit() {
        def checklistItemInstance = ChecklistItem.get(params.id)
        if (!checklistItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
            redirect(action: "list")
            return
        }
        boolean bRet = checkPrivilege(session, checklistItemInstance);
		if (!bRet)
		{
			flash.message = message(code: 'checklist.edit.item.noprivilege', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
			redirect(action: "list")
			return;
		}

        [checklistItemInstance: checklistItemInstance]
    }
	
	boolean checkPrivilege(session, checklistItemInstance)
	{
		if(session?.user?.admin)
		{
			return true;
		}
		
//		System.out.println("-------session?.user?.username:"+session?.user?.username +" checklistItemInstance.contributor:"+checklistItemInstance.contributor);
		if(session?.user?.username == checklistItemInstance.contributor)
		{
			return true;
		}
		
		return false;
	}

    def update() {
        def checklistItemInstance = ChecklistItem.get(params.id)
        if (!checklistItemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (checklistItemInstance.version > version) {
                checklistItemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'checklistItem.label', default: 'ChecklistItem')] as Object[],
                          "Another user has updated this ChecklistItem while you were editing")
                render(view: "edit", model: [checklistItemInstance: checklistItemInstance])
                return
            }
        }

        checklistItemInstance.properties = params

        if (!checklistItemInstance.save(flush: true)) {
            render(view: "edit", model: [checklistItemInstance: checklistItemInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), checklistItemInstance.id])
        redirect(action: "show", id: checklistItemInstance.id)
    }

    def delete() {
        def checklistItemInstance = ChecklistItem.get(params.id)
        if (!checklistItemInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
            redirect(action: "list")
            return
        }

        try {
            checklistItemInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'checklistItem.label', default: 'ChecklistItem'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
