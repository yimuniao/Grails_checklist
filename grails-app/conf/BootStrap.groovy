import app.domains.Bookmark
import app.domains.Category
import grails.util.Environment
import grails.util.GrailsUtil
import checklist.User


class BootStrap {

    def categoryService
    def init = { servletContext ->
		/*switch(GrailsUtil.getEnvironment())*/
		switch(Environment.getCurrent().name)
		{
			case "development":
			def admin = new User(username:"admin",
				password:"admin",
				role:"admin")
			admin.save()
			if(admin.hasErrors())
			{
				println admin.errors
			}
			
			def jdoe = new User(username:"user", password:"123", role:"user")
			jdoe.save()
			if(jdoe.hasErrors())
			{
				println jdoe.errors
			}
			
		categoryService.generateDefaultCategories()
			
		Bookmark book1 = new Bookmark(url: 'http://www.infoq.com/grails',title: 'InfoQ Java',
			description: 'Arcticles, presentations and interviews about Grails', category: Category.findByName('Grails'))
		
		assert book1.save(flush: true)
		}
		
		
    }
    def destroy = {
    }
}
