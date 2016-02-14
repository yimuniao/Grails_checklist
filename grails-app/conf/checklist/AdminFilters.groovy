package checklist

class AdminFilters {

    def filters = {
		
        adminOnly(controller:'user', action:"(create|edit|update|delete|save)") {
            before = {
				if(session == null || session.user == null)
				{
					flash.message="anonymous user"
					redirect(controller:"ChecklistItem", action:"list")
					return false
				}
                if(!session?.user?.admin)
                {
                    flash.message="Sorry, admin only"
                    redirect(controller:"ChecklistItem", action:"list")
                    return false
                }
            }
            after = {
                
            }
            afterView = {
                
            }
        }
    }
    
}