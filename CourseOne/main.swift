//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation

// №1 Решить квадратное уравнение a*x^2+bx+c=0

let numberA = 2.0
let numberB = 5.0
let numberC = 3.0

let discriminant = pow(numberB,2) - (4 * numberA * numberC)
let x1 = ((-1 * numberB) + sqrt(discriminant)) / (2 * numberA)
let x2 = ((-1 * numberB) - sqrt(discriminant)) / (2 * numberA)
let x3 = (-1 * numberB) / (2 * numberA)
let x4 = "Нет корней!"

if discriminant > 0 {
    print("Первый корень равен:", x1)
    print("Второй корень равен:", x2)
} else if discriminant < 0 {
    print(x4)
} else if discriminant == 0 {
    print(x3)
}


// №2 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу
// треугольника.

let katetOne = 3.0
let katetTwo = 4.0

let ploshad = (1 / 2) * katetOne * katetTwo
let hypotenusa = sqrt(katetOne + katetTwo)
let perimetr = katetOne + katetTwo + hypotenusa

print("В прямоугольном треугольнике:\nS=", ploshad, "\nP=", perimetr, "\nH=", hypotenusa)


//№3 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через
// 5 лет

var answer = 0.0
var summaVklada = 0.0
var godovoyProcent = 0.0

print("Введите сумму вклада: ")
if let summaStr = readLine() {
    if let summaInt = Double(summaStr){
        summaVklada = summaInt
    }
    else {
        print("Невозможно преоброзовать", summaStr, "в число.")
    }
} else {
    print("Ошибка!!!")
}

print("Введите годовой процент: ")
if let procentStr = readLine() {
    if let procentInt = Double(procentStr){
        godovoyProcent = procentInt
    }
    else {
        print("Невозможно преоброзовать", procentStr, "в число.")
    }
} else {
    print("Ошибка!!!")
}

answer = summaVklada * (1 + (0.01 * godovoyProcent)) * 5
print("Сумма вклада через 5 лет равна:", answer)
