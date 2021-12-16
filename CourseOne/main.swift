//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation

enum CreditCardOperationError: Error {
    case insufficientFunds (moneyNeeded: Double)
    case frozenBalance
}

struct thing {
    var price: Double
}

class CreditCardOperation {
    let limit: Double = -30000
    var balance: Double = 0
    var isCardBlocked = false

    func buySomethig(thing: thing)throws {
        guard isCardBlocked == false else{
            throw CreditCardOperationError.frozenBalance
        }
        // провека на возможность позволить купить себе эту вещь
        guard thing.price <= (-limit + self.balance) else {
            if balance < 0 {
                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit + balance)
            } else {
                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit - balance)
            }
        }
        balance = self.balance - thing.price
    }

    // функция для внесения какой-либо суммы денег
    func depositeMoney (someMoney: Double) {
        balance = self.balance + someMoney
    }

    // функция "узнай свой баланс"
    func printBalance() {
        print ("Balance is \(balance) rub")
    }

    // банк может заблокировать нашу карту
    func changeCardState(isCardBlocked: Bool) {
        switch isCardBlocked {
        case true:
            self.isCardBlocked = true
        case false:
            self.isCardBlocked = false
        }
    }
}

extension CreditCardOperationError: CustomStringConvertible {
    var description: String {
        switch self {
        case .insufficientFunds(let moneyNeeded): return "There is not enough money on the card to carry out this operation. Your balance: \(operation.balance) rub, indispensably: \(moneyNeeded) rub"
        case .frozenBalance: return "Your balance is frozen for some reason. For more information, please contact the Bank."
        }
    }
}

let operation = CreditCardOperation()
do {
    try operation.buySomethig(thing: .init(price: 650.1))
} catch let error as CreditCardOperationError {
    print(error.description)
}
operation.printBalance()
operation.depositeMoney(someMoney: 98000)
operation.printBalance()
do {
    try operation.buySomethig(thing: .init(price: 100000))
} catch let error as CreditCardOperationError {
    print(error.description)
}
operation.printBalance()
do {
    try operation.buySomethig(thing: .init(price: 45035))
} catch let error as CreditCardOperationError {
    print(error.description)
}

operation.printBalance()
operation.changeCardState(isCardBlocked: true)

do {
    try operation.buySomethig(thing: .init(price: 90))
} catch let error as CreditCardOperationError {
    print(error.description)
}
