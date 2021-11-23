//
//  main.swift
//  CourseOne
//
//  Created by Евгений Атеев on 23/11/21.
//

import Foundation

//№1 Написать функцию, которая определяет, четное число или нет.

func isEvenNum(num: Int){
    if num % 2 == 0{
        print("Число четное")
    }
    else {
        print("Число не четное")
    }
}

print("Введите число:")
if let number = readLine() {
    if let summaInt = Int(number){
        isEvenNum(num: summaInt)
    }
    else {
        print("Невозможно преоброзовать", number, "в число.")
    }
}


