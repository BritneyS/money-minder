import Vapor

func routes(_ app: Application) throws {
    app.get("accounts") { req -> [Account] in
        return Accounts
    }
}
