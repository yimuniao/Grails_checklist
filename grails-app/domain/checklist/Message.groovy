package checklist

class Message {
    String nickname
    Date date = new Date()
    String message
    static constraints = {
        nickname(nullable:false)
        date(nullable:false)
        message(nullable:false)
    }
}
