//
//  main.swift
//  Homework_24.Extensions
//
//  Created by Aleksandr Kan on 09.06.2021.
//


//1. Создайте расширение для Int с пропертисами isNegative, isPositive, bool
//2. Добавьте проперти, которое возвращает количество символов в числе
//3. Добавьте сабскрипт, который возвращает символ числа по индексу

extension Int {
    //1.
    var isNegative: Bool {
        //return self < 0 ? true : false
        return self < 0
    }
    
    var isPositive: Bool {
        //return self > 0 ? true : false
        return self > 0
    }
    
    
    var result: String {
        switch self {
            case let number where number < 0:
                return "Number \(self) is negative"
            default:
                return "Number \(self) is positive"
        }
    }
    
    var bool: Bool {
        return self != 0
    }
    
    
    
    //2.
    var countSymbols: Int {
        var array = [Character]()
        let stringNumber = "\(self)"
        
        for number in stringNumber {
            array.append(number)
        }
        
        return array.count
    }
    
    //3.
    
    subscript(_ index: Int) -> Int {
        
        
        get {
            var array = [Character]()
            let str = "\(self)"
            
            for i in str.reversed() {
                array.append(i)
            }
            
            //array.reverse()
            guard index < array.count else {
                return 0
            }
            
            let number = "\(array[index])"
            
            return Int(number) != nil ? Int(number)! : 0
            
        }
        set {
            var str = String(self).map(String.init)
            //str.reverse()
            str[index] = String(newValue)
            let string = str.joined()
            self = Int(string)!
            
        }
        
        
/*
        if let x = Int(number) {
            return x
        }

        return 0
 */
    }
    
    
}


let number_1 = -1
print("Number is negative: \(number_1.isNegative)")

let number_2 = 25
print("Number is positive: \(number_2.isPositive)")

let number_3 = 55
print(number_3.result)

let number_4 = 1234567890
print("Count digits on number: \(number_4.countSymbols)")

let number_5 = 123456789
print("Number on: \(number_5[3])")

var number_6 = 3245464576
number_6[3] = 2
print("New number: \(number_6)")

let number_7 = 10
print("Bool test: \(number_7.bool)")




extension Human {
    func sayBye() {
        print("Human say bye")
    }
    
    enum Colors {
        case red, green, black
    }
    
}

extension Human.Colors {
    
}



class Human {
    func say() {
        print("Hello")
    }
}


let h1 = Human()

h1.sayBye()


extension String {
    
    subscript(range: Range<Int>) -> String {
        let start = index(self.startIndex, offsetBy: range.startIndex)
        let end = index(start, offsetBy: range.endIndex)
        if range.endIndex > self.count {
            return "error"
        }
        
        return String(self[start...end])
    }
    
    
    
    func truncate(count: Int) -> String {
        
        
        if count < self.count {
            return self[0..<count] + "..."
        } else {
            return self
        }
    }
    
    //МОЙ ВАРИАНТ!
    func truncate2(count: Int) -> String {
        var str = ""
        
        guard count <= self.count else {
            return "Error count"
        }
        
        for i in self {
            if str.count != count {
                str.append(i)
            }
        }
        
        
        return str + "..."
    }
    
}


let s1 = "Trlololo Egegey"


print("Result string: \(s1.truncate(count: 1))")

print("MY RESULT: \(s1.truncate2(count: 10))")



let range = 1..<100

print("Number: \(range.endIndex)")
