//
//  AppDelegate.swift
//  swiftLesson_01
//
//  Created by Aleksandr Kan on 17.02.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let skyColor = "Blue"
        let nameCity = "Almalyk"
        print(skyColor, nameCity)
        
        let _: String = "Hello"
        var _: Int = 22
        var _: Bool = true
        var _: Double = 1.0
        var _: Float = 2.0
        
        let carName = "BMW"
        let colorCar = "Black"
        var ageCar = 2
        var 	disttanceCar = 9230
        
        print("Car name = \(carName) \nColor car = \(colorCar) \nAge car = \(ageCar) \nDistance = \(disttanceCar)")
        ageCar = disttanceCar
        disttanceCar = ageCar
        
        let redColor = "Red"
        let blackColor = "Black"
        let greenColor = "Green"
        let blueColor = "Blue"
        let grayColor = "Gray"
        
        print("Red color: \(redColor)")
        print("Black color: \(blackColor)")
        print("Green color: \(greenColor)")
        print("Blue color: \(blueColor)")
        print("Gray color: \(grayColor)")
        
        let thingForRed = "Apple"
        let thingForBlack = "Night"
        let thingForGreen = "Grape"
        let thingForBlue = "Sky"
        let thingForGray = "Case"
        
        print("RED: \(thingForRed) \nBLACK: \(thingForBlack) \nGREEN: \(thingForGreen) \nBLUE: \(thingForBlue) \nGRAY: \(thingForGray)")
        
        let otherType = type(of: blueColor)
        print(otherType)
        
        
        //let pr: () = print("HELLO")
        //print(pr)
        
        
        //Person #1
        let name = "Victor"
        let surname = "Tsoy"
        let patronymic = "Vladimirovich"
        let dayBorn = 23
        let monthBorn = 02
        let yearBorn = 1992
        
        var weight = 75.1
        var height = 177.5
        var age = 28
        
        print("Surname: \(surname) \nName: \(name) \nPatronymic: \(patronymic)")
        print("Date born: \(dayBorn).\(monthBorn).\(yearBorn)")
        print("Weight: \(weight) \nHeight: \(height) \nAge: \(age)")
        
        
        //Person #2
        let name_02 = "Vladimir"
        let surname_02 = "Ten"
        let patronymic_02 = "Aleksandrovich"
        let dayBorn_02 = 12
        let monthBorn_02 = 5
        let yearBorn_02 = 1993
        
        var weight_02 = 70.0
        var height_02 = 174.0
        var age_02 = 27
        
        print("Surname: \(surname_02) \nName: \(name_02) \nPatronymic: \(patronymic_02)")
        print("Date born: \(dayBorn_02).\(monthBorn_02).\(yearBorn_02)")
        print("Weight: \(weight_02) \nHeight: \(height_02) \nAge: \(age_02)")
        
        
        //Person #3
        let name_03 = "Aleksander"
        let surname_03 = "Pak"
        let patronymic_03 = "Alekseevich"
        let dayBorn_03 = 3
        let monthBorn_03 = 11
        let yearBorn_03 = 1996
        
        var weight_03 = 82.0
        var height_03 = 179.4
        var age_03 = 24
        
        print("Surname: \(surname_03) \nName: \(name_03) \nPatronymic: \(patronymic_03)")
        print("Date born: \(dayBorn_03).\(monthBorn_03).\(yearBorn_03)")
        print("Weight: \(weight_03) \nHeight: \(height_03) \nAge: \(age_03)")
        
        
        
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

