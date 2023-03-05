import Foundation
import Vapor

enum AccountType: String, Content {
    case bank = "bank"
    case investing = "investing"
    case highInterestSavings = "high interest savings"
}

struct Account: Content {
    let id: String
    let type: AccountType
    let balance: Int
}

struct AccountListResponse: Content {
    let accounts: [Account]
}


