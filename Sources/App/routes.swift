import Vapor

func routes(_ app: Application) throws {
    let accountsController = AccountsController()
    
    app.get("accounts", use: accountsController.getAllHandler)
    
    try app.register(collection: accountsController)
}
