import Vapor

struct AccountsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get(AccountEndpoints.accounts.path, use: list)
    }
    
    func list(_ req: Request) -> [Account] {
        print(AccountEndpoints.accounts.path)
        return Accounts
    }

}
