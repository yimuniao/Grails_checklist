package checklist

class LoginTagLib {
    def loginControl={
//        out<<new Date()
        if(request.getSession(false) && session.user)
        {
            out<<"Hello ${session.user.username}"
            out<<"""[${link(action:"logout",controller:"user"){"Logout"}}]"""
        }
        else
        {
            out<<"""[${link(action:"login", controller:"user"){"Login"}}]"""
        }
    }
}