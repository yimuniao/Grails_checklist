import grails.util.Environment
import grails.util.GrailsUtil
import checklist.User


class BootStrap {

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
		}
    }
    def destroy = {
    }
}
