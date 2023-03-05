@testable import App
import XCTVapor

final class AccountsControllerTests: XCTestCase {
    func testListAccounts() throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try configure(app)

        try app.test(.GET, AccountEndpoints.accounts.path.description, afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.headers.contentType, .json)
            let accountList = try res.content.decode(AccountListResponse.self)
            // Casting to `as Any` first is a workaround from the compiler that's
            // too clever: throwing 'is test always returns true' warning, when
            // the test itself is meant to assert the type when it could be falsey!
            XCTAssertTrue((accountList.accounts as Any) is [Account])
        })
    }
}
