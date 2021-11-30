//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation

enum TypeOfCar {
    case car
    case jeep
    case sportCar
    case motorcycle
}

enum Gear {
    case manual
    case auto
}

enum Engine {
    case start
    case stop
}

enum Door {
    case open
    case close
}

enum WindowIs {
    case open
    case close
}

enum Color {
    case white
    case blue
    case black
    case red

    var color: String {
        switch self {
        case .white:
            return "Машина белого цвета"
        case .blue:
            return "Машина синего цвета"
        case .black:
            return "Машина черного цвета"
        case .red:
            return "Машина красного цвета"
        }
    }
}

struct Car {
    let typeOfCar: TypeOfCar
    let brandName: CarBrand
    let manufactureYear: Int
    var engine: Engine
    var gear: Gear
    var door: Door
    var window: WindowIs
    var color: Color
    var itemsInTrunk: Double
    var trunkVolume: Double

    var restVolume: String {
        let volume = (trunkVolume - itemsInTrunk)
        return "В багажнике осталось \(volume)"
    }

    mutating func closeDoor() {
        if door == .open {
            door = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if door == .close{
            door = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func openWindow() {
        if window == .close {
            window = .open
            print("Окно открыто")
        } else {
            print("Окно уже открыто")
        }
    }

    mutating func closeWindow() {
        if window == .open {
            window = .close
            print("Окно закрыто")
        } else {
            print("Окно уже закрыто")
        }
    }

    enum CarBrand {
        case Ford
        case Toyota
        case Hyundai
        case Honda

        var name: String{
            switch self {
            case .Ford:
                return "Ford"
            case .Toyota:
                return "Toyota"
            case .Hyundai:
                return "Hyundai"
            case .Honda:
                return "Honda"
            }
        }
    }
}

struct Jeep {
    let typeOfCar: TypeOfCar
    let brandName: JeepBrand
    let manufactureYear: Int
    var engine: Engine
    var gear: Gear
    var door: Door
    var window: WindowIs
    var color: Color
    var itemsInTrunk: Double
    var trunkVolume: Double

    var restVolume: String {
        let volume = (trunkVolume - itemsInTrunk)
        return "В багажнике осталось \(volume)"
    }

    mutating func closeDoor() {
        if door == .open {
            door = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if door == .close{
            door = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func openWindow() {
        if window == .close {
            window = .open
            print("Окно открыто")
        } else {
            print("Окно уже открыто")
        }
    }

    mutating func closeWindow() {
        if window == .open {
            window = .close
            print("Окно закрыто")
        } else {
            print("Окно уже закрыто")
        }
    }

    enum JeepBrand {
        case Jeep
        case Toyota
        case RangeRover

        var name: String {
            switch self {
            case .Jeep:
                return "Jeep"
            case .Toyota:
                return "Toyota"
            case .RangeRover:
                return "Range Rover"
            }
        }
    }
}

struct SportCar {
    let typeOfCar: TypeOfCar
    let brandName: SportCarBrand
    let manufactureYear: Int
    var engine: Engine
    var gear: Gear
    var door: Door
    var window: WindowIs
    var color: Color
    var itemsInTrunk: Double
    var trunkVolume: Double

    var restVolume: String {
        let volume = (trunkVolume - itemsInTrunk)
        return "В багажнике осталось \(volume)"
    }

    mutating func closeDoor() {
        if door == .open {
            door = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if door == .close{
            door = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func openWindow() {
        if window == .close {
            window = .open
            print("Окно открыто")
        } else {
            print("Окно уже открыто")
        }
    }

    mutating func closeWindow() {
        if window == .open {
            window = .close
            print("Окно закрыто")
        } else {
            print("Окно уже закрыто")
        }
    }

    enum SportCarBrand {
        case Ferrari
        case Mustang
        case Buggatti
        case Lamborgini

        var name: String {
            switch self {
            case .Ferrari:
                return "Ferrari"
            case .Mustang:
                return "Mustang"
            case .Buggatti:
                return "Buggatti"
            case .Lamborgini:
                return "Lamborgini"
            }
        }
    }
}

struct Motorcycle {
    let typeOfCar: TypeOfCar
    let brandName: MotorcycleBrand
    let manufactureYear: Int
    var engine: Engine
    var gear: Gear
    var color: Color
    var itemsInTrunk: Double
    var trunkVolume: Double

    var restVolume: String {
        let volume = (trunkVolume - itemsInTrunk)
        return "В багажнике осталось \(volume)"
    }

    enum MotorcycleBrand {
        case HarleyDavidson
        case Yamaha
        case Honda

        var name: String {
            switch self {
            case .HarleyDavidson:
                return "Harley Davidson"
            case .Yamaha:
                return "Yamaha"
            case .Honda:
                return "Honda"
            }
        }
    }
}



let carOne = Car.init(typeOfCar: .car,
                      brandName: .Hyundai,
                      manufactureYear: 1999,
                      engine: .start,
                      gear: .manual,
                      door: .close,
                      window: .close,
                      color: .blue,
                      itemsInTrunk: 15,
                      trunkVolume: 100)

let carTwo = Jeep.init(typeOfCar: .jeep,
                       brandName: .RangeRover,
                       manufactureYear: 2016,
                       engine: .start,
                       gear: .auto,
                       door: .open,
                       window: .close,
                       color: .black,
                       itemsInTrunk: 0,
                       trunkVolume: 180)

let carThree = SportCar.init(typeOfCar: .sportCar,
                             brandName: .Buggatti,
                             manufactureYear: 2016,
                             engine: .stop,
                             gear: .manual,
                             door: .close,
                             window: .close,
                             color: .red,
                             itemsInTrunk: 24,
                             trunkVolume: 50)

let carFour = Motorcycle.init(typeOfCar: .motorcycle,
                              brandName: .HarleyDavidson,
                              manufactureYear: 1989,
                              engine: .start,
                              gear: .manual,
                              color: .blue,
                              itemsInTrunk: 2,
                              trunkVolume: 5)
