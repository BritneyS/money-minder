import Vapor

public enum AccountEndpoints: String {
    // MARK:- Account Endpoints
    case accounts = "accounts"
   
    var path: PathComponent {
        return PathComponent(
            stringLiteral: self.rawValue
        )
    }
}

func routes(_ app: Application) throws {
    let accountsController = AccountsController()
    print(AccountEndpoints.accounts.path)
    
    app.get(AccountEndpoints.accounts.path, use: accountsController.list)
    
    try app.register(collection: accountsController)
}
