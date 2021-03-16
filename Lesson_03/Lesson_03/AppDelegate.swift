//
//  AppDelegate.swift
//  Lesson_03
//
//  Created by Aleksandr Kan on 21.02.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        let redColor = "Red"
        let greenColor = "Green"
        let myPoint = 23
        
        let tuple = (redColor, greenColor, myPoint)
        
        print(tuple.0)
        print(tuple.1)
        print(tuple.2)
        
        let (red, green, point) = tuple
        
        print(red)
        print(green)
        print(point)
        
        let testTuple = (var01: 1, var02: "Hello", var03: !true)
        
        if testTuple.var03 {
            print(testTuple.var02)
        } else {
            print("Ooops")
        }
        
        
        
        let typeTuple: (Int, String, Int) = (23, "WWE", 3)
        typeTuple.0
        typeTuple.1
       
        let (x, z, y) = (12, "we", 0.3)
        
        print(x, y, z)
        
        
        let newTestTuple = (1993, 8, "Hello")
        let (_, _, phrase) = newTestTuple
        print(phrase)
        
        
        let names = (name1: "Alex", name2: "Jack", name3: "Bob")
        print("List name: \(names.name1) \(names.name2) \(names.name3)")
        
        let otherNames = ("Alex", "Jack", "Bob")
        var newListNames = (name01: "Ferzz", name02: "Keldish", name03: "Laker")
        print("Old list name: \(newListNames)")
        
        let carAndNumbers = ("Honda", 235, "BMW", 999, "AUDI", 537)
        let (HONDA, hondaNumber, BMW, bmwNumber, Audi, audiNumber) = carAndNumbers
        
        print("List cars: \(HONDA) \(BMW) \(Audi)")
        print("List numbers for car: \(hondaNumber) \(bmwNumber) \(audiNumber)")
        
        newListNames = otherNames
        print("List 1: \(newListNames)")
        
        
        var newPoints = (x: 112, y: -230)
        var newPoints02 = (x: 22, y: -23)
        
        if names == otherNames {
            print("True")
        } else {
            print("False")
        }
        
        print(newPoints == newPoints02)
        print("New point 02 \(newPoints02)")
        print("New points \(newPoints)")
        let infoList: (x: Int, y: Int) = newPoints02
        newPoints02 = newPoints
        newPoints = infoList
        print("New point 02 \(newPoints02)")
        print("New points \(newPoints)")
        
        
        var d = 234
        var l = 1002
        print("var d: \(d), var l: \(l)")
        var j = d
        d = l
        l = j
        print("var d: \(d), var l: \(l)")
        
        let collectionPoint: (payBonus: Int, cashback: Int, nameBonus: String) = (234, 44, "Discount bonus")
        
        collectionPoint.0
        collectionPoint.payBonus
        collectionPoint.cashback
        
        print("Collection point and index print: \(collectionPoint.0), \(collectionPoint.1), \(collectionPoint.2)")
        print("Collection point and indexName print: \(collectionPoint.payBonus), \(collectionPoint.cashback), \(collectionPoint.nameBonus)")
        
        let musicList = ("Pink Floyd", "Linkin Park", "ATB", 3)
        let (Artist01, Artist02, Artist03, Info) = musicList
        print("Artist's: \(Artist01), \(Artist02), \(Artist03)")
        print("All track's: \(Info)")
        
        var pageAnswer = (101, "Page not found", "Ubuntu 19.0")
        let (codeAnswer, _, _) = pageAnswer
        print("Code error on server: \(codeAnswer)")
        
        
        
        let strNumber = "12"
        let intNumber = 20
        //let sum = intNumber + Int(strNumber)!
        
        //print("Sum equal: \(sum)")
        
        if Int(strNumber) != nil {
            print("str = \(strNumber)")
        } else {
            print("Nil value")
        }
        
        
        
        
        if let newNum = Int(strNumber) {
            print(newNum)
        } else {
            print("Ooops")
        }
        
        
        
        let myNewList = ("Razer", "25", "Logitech", 30, "Asus", 20)
        let (Razer, razerPrice, Logitech, logitechPrice, Asus, asusPrice) = myNewList
        
        print("Razer and price: \(Razer), \(razerPrice)")
        print("Logitech an price: \(Logitech), \(logitechPrice)")
        print("Asus and price: \(Asus), \(asusPrice)")
        
        let totalSum = myNewList.3 + myNewList.5 + Int(myNewList.1)!
        print("Total price: \(totalSum)")
        
        
        
        
        
        
        
        //22.02.2021
        
        // Tasks 1
        //Car's
        
        let carList01: (Audi: String, distance: Int, price: Double, status: Bool) = ("Audi A8", 48523, 30500.0, true)
        let carList02 = ("BMW 360", 10234, 22675.0, false)
        let carList03: (String, Int, Double, Bool) = ("KIA K5", 11900, 28000.0, true)
        let (kia, distance, price, status) = carList03 //tuple decompoze for KIA
        
        let carList04 = (Ford: "Ford Mustang", Distanse: 9000, Price: 48000.0, Status: true)
        
        
        print("Audi info:\n")
        print("Brand: \(carList01.Audi), Distance: \(carList01.distance), Price: \(carList01.price), Status: \(carList01.status)")
        
        print("BMW info:\n")
        print("Brand: \(carList02.0), Distance: \(carList02.1), Price: \(carList02.2), Status car: \(carList02.3)")
        
        print("KIA info:\n")
        print("KIA: \(kia), distance:\(distance), price: \(price), status: \(status)")
        
        print("Ford info:\n")
        print("Ford: \(carList04.Ford), distance: \(carList04.Distanse), price: \(carList04.Price), status: \(carList04.Status)")
        
        
        //Month's
        
        let monthForEnglish = (january: "January", february: "February", mart: "Mart", april: "April", may: "May", june: "June", jule: "Jule", august: "August", september: "September", october: "October", november: "November", december: "December")
        
        let monthForRussia = ("Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь")
        let (month01, month02, month03, month04, month05, month06, month07, month08, month09, month10, month11, month12) = monthForRussia
        
        print("All month's: \(monthForEnglish.january), \(monthForEnglish.february), \(monthForEnglish.mart), \(monthForEnglish.april), \(monthForEnglish.may), \(monthForEnglish.june), \(monthForEnglish.jule), \(monthForEnglish.august), \(monthForEnglish.september), \(monthForEnglish.october), \(monthForEnglish.november), \(monthForEnglish.december)")
        
        print("All month's with index: \(monthForEnglish.0), \(monthForEnglish.1), \(monthForEnglish.2), \(monthForEnglish.3), \(monthForEnglish.4), \(monthForEnglish.5), \(monthForEnglish.6), \(monthForEnglish.7), \(monthForEnglish.8), \(monthForEnglish.9), \(monthForEnglish.10), \(monthForEnglish.11)")
        
        print("Все месяца года на русском: ", month01, month02, month03, month04, month05, month06, month07, month08, month09, month10, month11, month12)
        
        
        var emptyTuple: (String, Int, Bool)
        
        let otherTuple = ("Hello World,", 404, true)
        
        emptyTuple = otherTuple
        
        print("Phrase: \(emptyTuple.0)")
        print("Status code: \(emptyTuple.1)")
        print("Status: \(emptyTuple.2)")
        
        print("Result equal tuple's: \(emptyTuple == otherTuple)")
        
        
        
        
        //Task 2
        var myScore = (squats: 25, pushups: 20, pullups: 15)
        let (squats, pushups, pullups) = myScore
        
        print("My result's:")
        print("Squats: \(myScore.squats);", "Pushups: \(myScore.pushups);", "Pullups: \(myScore.pullups);")
        print("Print result's use index number")
        print("Squats: \(myScore.0); Pushups:\(myScore.1); Pullups:\(myScore.2)")
        print("Print result's use parameter's")
        print("Squats: \(squats); Pushups: \(pushups); Pullups: \(pullups)\n")
        
        var friendResult = (squats: 20, pushups: 15, pullups: 18)
        let (friendSquats, friendPushups, friendPullups) = friendResult
        
        print("Result's my friend")
        print("Squats: \(friendResult.squats); Pushups: \(friendResult.pushups); Pullups: \(friendResult.pullups)")
        print("Print result's use inddex number")
        print("Squats: \(friendResult.0); Pushups: \(friendResult.1); Pullups: \(friendResult.2)")
        print("Print result's use parameter's")
        print("Squats: \(friendSquats); Pushups: \(friendPushups); Pullups: \(friendPullups)\n")
        
        
        print("Before__________________________")
        print("My score: \(myScore)")
        print("Friend result: \(friendResult)\n")
        
        let changeVariable = myScore
        myScore = friendResult
        friendResult = changeVariable
        
        print("After___________________________")
        print("My score: \(myScore)")
        print("Friend result: \(friendResult)")
        
        
        
        //Task 3
        //var 1
        let tupleDifferent = (Int(myScore.squats - friendResult.squats), Int(myScore.pushups - friendResult.pushups), Int(myScore.pullups - friendResult.pullups))
        print("Tuple different: \(tupleDifferent)")
        
        //var 2
        let tupleRange = (myScore.squats - friendResult.squats, myScore.pullups - friendResult.pullups, myScore.pushups - friendResult.pullups)
        print("qwe: \(tupleRange)")
        
        
        
        
        //__________________________________
        let (_, _, value03) = myScore
        print("Value 03: \(value03)")
        
        let (_, value02, _) = tupleDifferent
        print("Value 02: \(value02)")
        
        let (value01, _, _) = tupleRange
        print("Valaue 01: \(value01)")
        
        
    
        
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

