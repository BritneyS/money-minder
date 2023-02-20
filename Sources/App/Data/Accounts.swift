import Foundation

let Accounts = [
    Account(id: UUID().uuidString, type: .bank, balance: Int.random(in: 1..<10000)),
    Account(id: UUID().uuidString, type: .investing, balance: Int.random(in: 1..<10000)),
    Account(id: UUID().uuidString, type: .investing, balance: Int.random(in: 1..<10000)),
    Account(id: UUID().uuidString, type: .highInterestSavings, balance: Int.random(in: 1..<10000)),
    Account(id: UUID().uuidString, type: .bank, balance: Int.random(in: 1..<10000)),
    Account(id: UUID().uuidString, type: .bank, balance: Int.random(in: 1..<10000)),
    Account(id: UUID().uuidString, type: .highInterestSavings, balance: Int.random(in: 1..<10000))
]

