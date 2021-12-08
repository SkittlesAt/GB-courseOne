//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation


struct People {
    var name: String
    var age: UInt
}

struct Queue<T> {

    private var items = [T]()

    public var isInHospital: Bool {
        return items.count == 0
    }

    mutating func pushToQueue (item: T) {
        items.append(item)
    }

    mutating func deleteLast () -> T {
        return items.removeLast()
    }

    public var firstInHospital: T? {
        if isInHospital {
            print("Никого в очереди нет!")
            return nil
        } else {
            print("Первый в очереди \(items.first)")
            return items.first
        }
    }

    public var lastInHospital: T? {
        if isInHospital {
            print("Никого в очереди нет!")
            return nil
        } else {
            print("Последний в очереди \(items.last)")
            return items.last
        }
    }

    func printQueue () {
        print(items)
    }
}

var people = Queue<People>()
people.pushToQueue(item: .init(name: "Александр", age: 22))
people.pushToQueue(item: .init(name: "Евгений", age: 21))
people.pushToQueue(item: .init(name: "Максим", age: 68))
people.pushToQueue(item: .init(name: "Валерия", age: 37))
people.pushToQueue(item: .init(name: "Дарья", age: 28))


people.deleteLast()

people.printQueue()

people.firstInHospital
people.lastInHospital

//TODO: не хватает мозгов и времени на придумывания имен концепта и логики, поэтому в будущем дополнить код!
//TODO: добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
//FIXME: убрать все предупреждения от Xcode 13
