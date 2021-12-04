//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation

enum Brand {
    case Mercedess
    case Ford
    case CAT
    case Volvo
    case Lamborgini
}

enum EngineType {
    case auto
    case mechanic
}

class Car {

    let brand: Brand
    let yearOfManufacturing: UInt
    let color: String
    let engineType: EngineType
    let topSpeed: UInt
    let price: UInt

    var speed = 0
    var isEngineStarted = false
    var isDoorIsOpen = false

    init(brand: Brand,
         yearOfManufacturing: UInt,
         color: String,
         engineType: EngineType,
         topSpeed: UInt,
         price: UInt)
    {
        self.brand = brand
        self.yearOfManufacturing = yearOfManufacturing
        self.color = color
        self.engineType = engineType
        self.topSpeed = topSpeed
        self.price = price
    }

    func startEngine () {
        //       isEngineStarted == false ? isEngineStarted = true : print("Двигатель заведен")
        //       хотел использовать тернарный оператор но не получается из-за несольких действий при условии true
        if isEngineStarted == false{
            isEngineStarted = true
            print("Двигатель запущен")
        } else {
            print("Двигатель уже запущен")
        }
    }


    func openDoor () {
        //        isDoorIsOpen == false ? isDoorIsOpen = true : print("Дверь закрыта")
        if isDoorIsOpen == false{
            isDoorIsOpen = true
            print("Дверь открыта")
        } else {
            print("Дверь уже закрыта")
        }
    }

    func printInfo () {
        print("Автомобиль: \(brand) Год выпуска: \(yearOfManufacturing) Цвет: \(color) Макс.Скорость: \(topSpeed) Цена: \(price)")
    }
}

final class SportCar: Car {

    private let horsePower: UInt

    init(brand: Brand,
         yearOfManufacturing: UInt,
         color: String,
         engineType: EngineType,
         topSpeed: UInt,
         price: UInt,
         horsePower: UInt)
    {
        self.horsePower = horsePower

        super.init(brand: brand,
                   yearOfManufacturing: yearOfManufacturing,
                   color: color,
                   engineType: engineType,
                   topSpeed: topSpeed,
                   price: price)
    }

    override func openDoor () {
        if isDoorIsOpen == false{
            isDoorIsOpen = true
            print("Дверь открыта")
        } else {
            print("Дверь уже закрыта")
        }
    }

    override func startEngine () {
        if isEngineStarted == false{
            isEngineStarted = true
            print("Двигатель запущен")
        } else {
            print("Двигатель уже запущен")
        }
    }
}

final class TrunkCar: Car {

    private var unhookTrailer = false

    init(brand: Brand,
         yearOfManufacturing: UInt,
         color: String,
         engineType: EngineType,
         topSpeed: UInt,
         price: UInt,
         unhookTrailer: Bool)
    {
        self.unhookTrailer = unhookTrailer

        super.init(brand: brand,
                   yearOfManufacturing: yearOfManufacturing,
                   color: color,
                   engineType: engineType,
                   topSpeed: topSpeed,
                   price: price)
    }

    override func openDoor () {
        if isDoorIsOpen == false{
            isDoorIsOpen = true
            print("Дверь открыта")
        } else {
            print("Дверь уже закрыта")
        }
    }

    override func startEngine () {
        if isEngineStarted == false{
            isEngineStarted = true
            print("Двигатель запущен")
        } else {
            print("Двигатель уже запущен")
        }
    }
}

var carMercedess = Car (brand: Brand.Mercedess, yearOfManufacturing: 1999, color: "Белый", engineType: EngineType.mechanic, topSpeed: 240, price: 6000)
carMercedess.printInfo()

var carLamborgini = Car (brand: Brand.Lamborgini, yearOfManufacturing: 2018, color: "Желтый",
                         engineType: EngineType.auto, topSpeed: 400, price: 300000)
carLamborgini.printInfo()
carLamborgini.openDoor()

var carVolvo = Car (brand: Brand.Volvo, yearOfManufacturing: 2010, color: "Серый", engineType: EngineType.auto,
                    topSpeed: 200, price: 100000)
carVolvo.printInfo()
carVolvo.openDoor()
carVolvo.startEngine()

