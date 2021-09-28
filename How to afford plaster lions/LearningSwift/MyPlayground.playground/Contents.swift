struct DatabaseManager {
    
    func saveData(data:String) -> Bool {
        return true
    }
}







struct ChatView {
    var message = "Dje si brate"
    
    func  sendChat() {
        var db = DatabaseManager()
        let successful = db.saveData(data: message)
             			   
    }
    
}
