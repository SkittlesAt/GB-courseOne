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

print("Введите целое число:")
if let number = readLine() {
    if let summaInt = Int(number){
        isEvenNum(num: summaInt)
    }
    else {
        print("Невозможно преоброзовать", number, "в число.")
    }
}


// №2 Написать функцию, которая определяет, делится ли число без остатка на 3.

func isEvenNum(num: Int) -> Bool{
    if num % 3 == 0{
        return true
    }
    else {
        return false
    }
}

let number = 30
if isEvenNum(num: number) == true {
    print("Число делиться на 3 без остатка")
} else {
    print("Число не делиться на 3 без остатка")
}


//№3 Создать возрастающий массив из 100 чисел.

var numbers = [Int] ()

for _ in 1...100 {
    let number = Int.random(in: 0..<10)
    numbers.append(number)
    print(numbers)
}


//№4 Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var numbers = [Int] ()

for _ in 1...100 {
    let number = Int.random(in: 0..<10)
    numbers.append(number)
}
print("Изначальный массив ", numbers)

// создаем два цикла, первый для того чтобы возобновлять index с 0 во втором цикле
for _ in 0..<numbers.count {
    for index in 0..<numbers.count {
        if index < numbers.count{
            if numbers [index] % 2 == 0 || numbers [index] % 3 != 0 {
                numbers.remove(at: index)
            }
        }
    }
}
print("Изменненный массив ", numbers)


//№5 Написать функцию, которая добавляет в массив новое число Фибоначчи
//и добавить при помощи нее 50 элементов.

var numbers = [1,1]

func Fibonachi (array:[Int]) -> Array<Int>{
    var array = [1,1]
    for index in 1..<49 {
        array.append(array[index] + array[index-1])
    }
    return array
}

print(Fibonachi(array: numbers))


// №6 Заполнить массив из 100 элементов различными простыми числами. Натуральное число,
// большее единицы, называется простым, если оно делится только на себя и на единицу. Для
// нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена,
// нужно выполнить следующие шаги:

var numbers = [Int] ()

print("Введите порог чисел: ")
if let numberN = readLine() {
    if let porog = Int(numberN) {
        for index in 2...porog {
            numbers.append(index)
        }
        print("Изначальный массив ", numbers)
    } else {
        print("Ошибка, введите целочисленый тип числа")
    }
}
