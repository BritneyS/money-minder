import Vapor

struct AccountsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get("accounts", use: getAllHandler)
    }
    
    func getAllHandler(_ req: Request) -> [Account] {
        return Accounts
    }

}
