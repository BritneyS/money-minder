import Foundation
import Vapor

enum AccountType: String, Content {
    case bank = "bank"
    case investing = "investing"
    case highInterestSavings = "high interest savings"
}


struct Account: Content {
    var id: String
    var type: AccountType
    var balance: Int
}

