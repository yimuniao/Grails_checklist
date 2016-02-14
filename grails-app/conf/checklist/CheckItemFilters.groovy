package checklist

class CheckItemFilters {

    def filters = {
        loginCheck(controller:'checklistItem', action:"(create|edit|update|delete|save)") {
			before = {
				if(session == null || session.user == null)
				{
					flash.message="anonymous user"
					redirect(controller:"ChecklistItem", action:"list")
					return false
				}
			}
			after = {
				
			}
			afterView = {
				
			}
		};
    }
}
