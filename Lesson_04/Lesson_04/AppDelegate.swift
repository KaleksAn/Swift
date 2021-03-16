//
//  AppDelegate.swift
//  Lesson_04
//
//  Created by Aleksandr Kan on 23.02.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let testVar01: String? = "234v"
        let testVar02: String? = "1O1"
        let testVar03: String? = "З123"
        
        let convertVar = Int(testVar01!)
        let convertVar02 = Int(testVar02!)
        let convertVar03 = Int(testVar03!)
        
        print("Test var01: \(testVar01!)")
        
        if convertVar02 != nil {
            print("Convert var02: \(convertVar02!)")
        } else {
            print("Convert var02 equal NIL!")
        }
        
        
        
        
        if let timeVar = convertVar03 {
            print("Time var equal: \(timeVar)")
        } else {
            print("Ooops! Var03 equal Nil!")
        }
        
        
        let valueOptional: Int!
        valueOptional = 23
        let varConvert: Int = valueOptional
            
        print("Value optional: \(varConvert)")
        
        print("Convert VAR: \(convertVar)")
        
        let testTuple: (var01: Int, var02: String?, var03: Double?) = (12, "34", 34.0)
        
        
        //
        let optVar_01: String? = "12b"
        let optVar_02 = "220"
        
        if let i = Int(optVar_01!) {
            print("i = \(i)")
        } else {
            print("Error")
        }
        
        if optVar_02 != nil {
            if let i: Int = Int(optVar_02) {
                print("Opt var: \(i)")
            } else {
                print("Opt var equal nil!")
            }
        }
        
        
        
        
        
        
        var sum: Int? = 0
        sum = Int(optVar_01!)
        print(type(of: sum))
        //sum = Int(optVar_01!)! + Int(optVar_02)!
        //print("SUM",type(of: sum!))
        let k: Int? = 23
        //let j = k! + sum!
        //print(type(of: j))
        
        let P = Int(optVar_02)
        print("P: \(type(of: P))")
        
        
        let strVar = "1O1"
        let strOptVar: String? = "2"
        
        //var resOpt = 0 + Int(strVar)!
        //print("resOpt: \(resOpt)")
        
        let testVar002 = String(strOptVar!)
        let chrVar: Character = "F"
        
        let intValue = Int(strOptVar!)!
        
        let boolVar = false
        
        //assert(boolVar != false, "Error weddewe")
        
        
        
        let varTest: Int? = nil
        
        let varTest02 = varTest ?? 1
        
        print(varTest02)
        
        
        let boolTestVar = false
        
        precondition(varTest02 > 0, "ATTENTION")
        
        
        
        
        
        let strNumber01 = "1O1"
        let strNumber02 = "1l1З"
        let strNumber03 = "2345"
        let strNumber04 = "wer"
        let strNumber05 = "1234"
        
        var sumStr = 0
        var timeStrVar = 0
        
        timeStrVar = Int(strNumber01) ?? 0
        sumStr += timeStrVar
        
        timeStrVar = Int(strNumber02) ?? 0
        sumStr += timeStrVar
        
        timeStrVar = Int(strNumber03) ?? 0
        sumStr += timeStrVar
        
        timeStrVar = Int(strNumber04) ?? 0
        sumStr += timeStrVar
        
        timeStrVar = Int(strNumber05) ?? 0
        sumStr += timeStrVar
        
        
        print("Sum STR equal: \(sumStr)")
        print("Sum equal: \(sumStr)")
        
        sumStr = 0
        
        
        if let i = Int(strNumber03), let f = Int(strNumber05) {
            sumStr = sumStr + i + f
            print("SUM STR = \(sumStr)")
        } else {
            print("strNumber = NIL")
        }
        
        
        
        //Task 01
        
        let varStr01 = "805"
        let varStr02 = "1O82"
        let varStr03 = "345"
        let varStr04 = "З23"
        let varStr05 = "4235"
        let varStr06 = "809"
        
        var varSumResult = 0
        
        
        //Optional binding
        
        if let i = Int(varStr01) {
            varSumResult = varSumResult + i
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr01 equal nil")
        }
        
        
        
        if let i = Int(varStr02) {
            varSumResult = varSumResult + i
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr02 equal nil")
        }
        
        
        if let i = Int(varStr03) {
            varSumResult = varSumResult + i
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr03 equal nil")
        }
        
        
        if let i = Int(varStr04) {
            varSumResult = varSumResult + i
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr04 equal nil")
        }
        
        
        if let i = Int(varStr05) {
            varSumResult = varSumResult + i
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr05 equal nil")
        }
        
        
        if let i = Int(varStr06) {
            varSumResult = varSumResult + i
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr06 equal nil")
        }
        
        
        print("Total sum varSumResult: \(varSumResult)")
        
        
        
        //-----------------------------------
        
        print("\nVAR #2")
        
        varSumResult = 0
        var invertVariable = 0
        
        invertVariable = Int(varStr01) ?? 0
        varSumResult += invertVariable
        
        if Int(varStr01) != nil {
            print("varStr01: \(invertVariable)")
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr01 equal nil")
        }
        
        
        invertVariable = Int(varStr02) ?? 0
        varSumResult = varSumResult + invertVariable
        if Int(varStr02) != nil {
            print("varStr02: \(invertVariable)")
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr02 equal nil")
        }
        
        
        invertVariable = Int(varStr03) ?? 0
        varSumResult = varSumResult + invertVariable
        
        if Int(varStr03) != nil {
            print("varStr03: \(invertVariable)")
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr03 equal nil")
        }
        
        
        invertVariable = Int(varStr04) ?? 0
        varSumResult = varSumResult + invertVariable
        
        if Int(varStr04) != nil {
            print("varStr04: \(invertVariable)")
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr04 equal nil")
        }
        
        
        invertVariable = Int(varStr05) ?? 0
        varSumResult = varSumResult + invertVariable
        
        if Int(varStr05) != nil {
            print("varStr05: \(Int(varStr05)!)")
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr05 equal nil")
        }
        
        
        invertVariable = Int(varStr06) ?? 0
        varSumResult = varSumResult + invertVariable
        
        if Int(varStr06) != nil {
            print("varStr06: \(Int(varStr06)!)")
            print("varSumResult: \(varSumResult)")
        } else {
            print("varStr06 equal nil")
        }
        
        
        //Force unwraping
        
        
        print("\nFORCE UNWRAPING")
        
        
        varSumResult = 0
        
        if Int(varStr01) != nil {
            varSumResult = Int(varStr01)! + varSumResult
            print("varSumResult = \(varSumResult)")
            
        } else {
            print("varStr01 equal nil")
        }
        
        
        //varSumResult = varSumResult + Int(varStr02)!
        
        
        if Int(varStr02) != nil {
            varSumResult = varSumResult + Int(varStr02)!
            print("varSumResult = \(varSumResult)")
        } else {
            print("varStr02 equal nil")
        }
        
        
        if Int(varStr03) != nil {
            varSumResult = varSumResult + Int(varStr03)!
            print("varSumResult = \(varSumResult)")
        } else {
            print("varStr03 equal nil")
        }
        
        
        
        if Int(varStr04) != nil {
            varSumResult = varSumResult + Int(varStr04)!
            print("varSumResult = \(varSumResult)")
        } else {
            print("varStr04 equal nil")
        }
        
        
        
        if Int(varStr05) != nil {
            varSumResult = varSumResult + Int(varStr05)!
            print("varSumResult = \(varSumResult)")
        } else {
            print("varStr05 equal nil")
        }
        
        
        
        if Int(varStr06) != nil {
            varSumResult = varSumResult + Int(varStr06)!
            print("varSumResult = \(varSumResult)")
        } else {
            print("varStr06 equal nil")
        }
        
        print("-----------------------------------")
        print("\nvarSumResult = \(varSumResult)")
        
        
        
        
        
        
        //Task 02
        
        let serverAnswer: (answerCode: Int, message: String?, errorMessage: String?) = (200, "Hello USER!", "Connection lost...")
        
        
        if  serverAnswer.answerCode > 200 && serverAnswer.answerCode < 300 {
            print(serverAnswer.message ?? "Variable message have nil value")
            print(type(of: serverAnswer.message))
            
        } else if serverAnswer.answerCode < 200 && serverAnswer.answerCode > 300 {
            print("\(serverAnswer.errorMessage ?? "Error message have nil value")")
        } else {
            print("Error...")
        }
        
        
        
        //Without status code
        if serverAnswer.message != nil {
            print(serverAnswer.message!)
        } else {
            print(serverAnswer.errorMessage ?? "nil")
        }
        
        
        
        
        //Task 03
        
        //Простой вариант
        /*
        var human01: (name: String?, carNumber: String?, estimate: Int?)
        var human02: (name: String?, carNumber: String?, estimate: Int?)
        var human03: (name: String?, carNumber: String?, estimate: Int?)
        var human04: (name: String?, carNumber: String?, estimate: Int?)
        var human05: (name: String?, carNumber: String?, estimate: Int?)
        */
        
        
        //Вариант 2
        var human01: (name: String?, carNumber: String?, estimate: Int?)
        var human02 = human01
        var human03 = human01
        var human04 = human01
        var human05 = human01
        
        
        human01 = ("Alex", "10F324LK", nil)
        human02 = ("Dmitry", "10K291NE", 4)
        human03 = ("Oleg", "11K396AS", 5)
        human04 = ("Boris", nil, 4)
        human05 = ("Leonid", "30K566KL", nil)
        
        
        //Простой вариант
        human01.name = "Oleg"
        human02.name = "Dmitriy"
        human03.name = "Vladimir"
        human04.name = "Boris"
        human05.name = "Leonid"
        
        human01.carNumber = "01F808AG"
        human02.carNumber = "10K291NE"
      //human03.carNumber = nil ЛИШНЯЯ ИНИЦИАЛИЗАЦИЯ
        human04.carNumber = "40T009IP"
       // human05.carNumber = nil ЛИШНЯЯ ИНИЦИАЛИЗАЦИЯ
        
       // human01.estimate = nil ЛИШНЯЯ ИНИЦИАЛИЗАЦИЯ
        human02.estimate = 4
       // human03.estimate = nil ЛИШНЯЯ ИНИЦИАЛИЗАЦИЯ
        human04.estimate = 5
        human05.estimate = 4
        
        
        
        
        //Human 01
        print("\nINFO LIST:")
        //print("Name student: \(human01.name ?? "nil")")
        if let name = human01.name, human01.carNumber != nil {
            print("\nName student: \(name)")
            print("Student \(human01) have car.")
            print("Model: BMW")
            print("Car number: \(human01.carNumber!)")
            
            if let estimate = human01.estimate {
                print("Estimate: \(estimate)")
            } else {
                print("This student don't have estimate")
            }
            
        } else if let name = human01.name {
            print("\nName student: \(name)")
            print("This student don't have car")
            
            if let estimate = human01.estimate {
                print("Estimate: \(estimate)")
            } else {
                print("This student don't have estimate")
            }
        } else {
            print("\nServer answer name equal nil...")
        }
        
        
        
        //Human 02
        if let name = human02.name, let carNumber = human02.carNumber {
            print("\nName student: \(name)")
            print("Student have car.")
            print("Model: KIA")
            print("Car number: \(carNumber)")
            
            if human02.estimate != nil {
                print("Estimate: \(human02.estimate!)")
            } else {
                print("This student don't have estimate")
            }
        } else if let name = human02.name {
            print("\nName student: \(name)")
            print("This student don't have car")
            if human02.estimate != nil {
                print("Estimate: \(human02.estimate!)")
            } else {
                print("This student don't have estimate.")
            }
        } else {
            print("\nServer answer name equal nil...")
            
        }
        
        
        //Human 03
        if let name = human03.name, let carNumber = human03.carNumber {
            print("\nName student: \(name)")
            print("Student have car.")
            print("Model: Ford Mustang")
            print("Car number: \(carNumber)")
            
            if let estimate = human03.estimate {
                print("Estimate: \(estimate)")
                
            } else {
                print("This student don't have estimate")
            }
            
            
        } else if let name = human03.name {
            print("\nName student: \(name)")
            print("This studdent don't have car")
            if let estimate = human03.estimate {
                print("Estimate: \(estimate)")
            } else {
                print("This student don't have estimate.")
            }
        } else {
            print("\nServer answer name equal nil...")
        }
        
        
        
        //Human 04
        
        if let name = human04.name, let carNumber = human04.carNumber {
            print("\nName student: \(name)")
            print("Student have car.")
            print("Model: Tesla")
            print("Car number: \(carNumber)")
            
            if let estimate = human04.estimate {
                print("Estimate: \(estimate)")
            } else {
                print("This studdent don't have estimate")
            }
        } else if let name = human04.name {
            print("\nName student: \(name)")
            print("This student don't have car")
            
            if let estimate = human04.estimate {
                print("Estimate: \(estimate)")
                
            } else {
                print("This student don't have estimate")
            }
            
        } else {
            print("\nServer answer name equal nil...")
        }
        
        
        
        //Human 05
        if let name = human05.name, let carNumber = human05.carNumber {
            print("\nName student: \(name)")
            print("Student have car.")
            print("Model: Mercedes")
            print("Car number: \(carNumber)")
            
            if let estimate = human05.estimate {
                print("Estimate: \(estimate)")
            } else {
                print("This student don't have estimate")
            }
        } else if let name = human05.name {
            print("\nName student: \(name)")
            print("This studdentt don't have car")
            if let estimate = human05.estimate {
                print("Estimate:\(estimate)")
            } else {
                print("This student don't have car")
            }
        } else {
            print("\nServer answer name equal nil...")
        }
        
        
       
        
        
        
        //-----------------------------------------------
        
        
        var nick: String!
        var hf: Int?
        var messCode: Int?
        
        let nwTp = (nick, hf, messCode)
        
        
        let text = " 123!"
        
        
        let valueNick = nick
        
        
        type(of: valueNick)
        
        print(type(of: valueNick))
        
        var ter = 10
        var kl = String(ter)
        print(type(of: kl))
        
        var hhh = Int(text)
        
        
        
        var studName: String!
        var studCar: String?
        var studRate: Int?
        
        var listStudent = (studName, studCar, studRate)
        
        listStudent.0 = "Jack"
        listStudent.1 = "12FS34"
        listStudent.2 = 3
        print("Name: \(listStudent.0 + "wae")")
        
        
        
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

