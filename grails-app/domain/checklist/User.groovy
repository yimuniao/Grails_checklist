package checklist

class User {

    String username
    String password
    String role = "user"
    static constraints = {
        username(blank:false, nullable:false, unique:true)
        password(blank:false, password:true)
        role(inList:["admin","user"], blank:false, nullable:false)
    }
    
    static transients=['admin']
    
    boolean isAdmin(){
        return role == "admin"
    }
    
	
	String getUsername()
	{
		username
	}
	
    def beforeInsert={
        
    }
    
    String toString(){
        username
    }
}
