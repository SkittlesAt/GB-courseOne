//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation

enum CarKey {
    case open
    case closed
}

enum EngineStatus {
    case start
    case stop
}

enum EngineType {
    case auto
    case manual
}

enum WindowStatus {
    case open
    case close
}

enum Brand {
    case Mercedess
    case BMW
    case Volvo
    case Huyndai
}

protocol CarProtocol {

    var model: Brand { get set }
    var yearOfManufacturing: UInt { get set }
    var engineType: EngineType { get set }
    var price:UInt { get }
    var carKey:CarKey { get set }
    var engineStatus: EngineStatus { get set }
    var windowStatus: WindowStatus { get set }

    func startEngine()
    func openCloseCar()
    func openCloseWindow()

}

extension CarProtocol {

    func startEngine() {
        engineStatus == .start ? print("Двигатель заведен") : print("Двигатель заглушен")
    }

    func openCloseCar() {
        carKey == .closed ? print("Машина закрыта") : print("Машина открыта")
    }

    func openCloseWindow() {
        windowStatus == .open ? print("Окно открыто") : print("Окно закрыто")
    }
}

final class SportCar: CarProtocol {

    var model: Brand
    var yearOfManufacturing: UInt
    var engineType: EngineType
    var price: UInt
    var carKey: CarKey
    var engineStatus: EngineStatus
    var windowStatus: WindowStatus

    private let maxSpeed: UInt
    private let horsePower: UInt

    init (model: Brand,
          yearOfManufacturing: UInt,
          engineType: EngineType,
          price: UInt,
          carKey: CarKey,
          engineStatus: EngineStatus,
          windowStatus: WindowStatus,
          maxSpeed: UInt,
          horsePower: UInt)
    {
        self.model = model
        self.yearOfManufacturing = yearOfManufacturing
        self.engineType = engineType
        self.price = price
        self.carKey = carKey
        self.engineStatus = engineStatus
        self.windowStatus = windowStatus
        self.maxSpeed = maxSpeed
        self.horsePower = horsePower
    }

    func carInfo () {
        print("Модель машины: \(model) Год производства: \(yearOfManufacturing) Тип двигателя: \(engineType) Цена: \(price) Максимальная скорость: \(maxSpeed) Лошадинные силы: \(horsePower) ")
    }
}

final class TrunkCar: CarProtocol {

    var model: Brand
    var yearOfManufacturing: UInt
    var engineType: EngineType
    var price: UInt
    var carKey: CarKey
    var engineStatus: EngineStatus
    var windowStatus: WindowStatus

    private let trunkVolume: UInt
    private let trunkWeight: UInt

    init (model: Brand,
          yearOfManufacturing: UInt,
          engineType: EngineType,
          price: UInt,
          carKey: CarKey,
          engineStatus: EngineStatus,
          windowStatus: WindowStatus,
          trunkVolume: UInt,
          trunkWeight: UInt)
    {
        self.model = model
        self.yearOfManufacturing = yearOfManufacturing
        self.engineType = engineType
        self.price = price
        self.carKey = carKey
        self.engineStatus = engineStatus
        self.windowStatus = windowStatus
        self.trunkVolume = trunkVolume
        self.trunkWeight = trunkWeight
    }

    func carInfo () {
        print("Модель машины: \(model) Год производства: \(yearOfManufacturing) Тип двигателя: \(engineType) Цена: \(price) Объем багажа: \(trunkVolume) Вес багажа: \(trunkWeight) ")
    }
}

let sportCar = SportCar(model: Brand.BMW,
                        yearOfManufacturing: 2016,
                        engineType: EngineType.auto,
                        price: 20000,
                        carKey: .open,
                        engineStatus: .start,
                        windowStatus: .open,
                        maxSpeed: 500,
                        horsePower: 300)

sportCar.carInfo()
sportCar.openCloseCar()
sportCar.openCloseWindow()
sportCar.startEngine()

let trunkCar = TrunkCar(model: Brand.Volvo,
                        yearOfManufacturing: 1999,
                        engineType: EngineType.manual,
                        price: 50000,
                        carKey: .closed,
                        engineStatus: .stop,
                        windowStatus: .close,
                        trunkVolume: 100,
                        trunkWeight: 1000)

trunkCar.carInfo()
trunkCar.openCloseCar()
trunkCar.openCloseWindow()
trunkCar.startEngine()

// TODO: - написать расширение, имплементирующее протокол CustomStringConvertible ( не успеваю загуглить, сделаю позже)

