//
//  AppDelegate.swift
//  Lesson_02
//
//  Created by Aleksandr Kan on 19.02.2021.
//

import UIKit
import Darwin

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let val_01 = 12
        let val_02 = 1.25
        let val_03 = true
        let val_04 = false
        let val_05: Float = 3.14
        
        let resultForInt = val_01 + Int(val_02)
        print("Result for Int: \(resultForInt)")
        
        let resultForDouble = val_02 + Double(val_01)
        print("Result for Double: \(resultForDouble)")
        
        let allConvertResult = val_05 + Float(val_01) + Float(val_02)
        print("All convert result: \(allConvertResult)")
        
        
        if val_03 {
            print("Val_03 is True")
        } else if val_04 {
            print("Val_04 is True")
        } else {
            print("Val_03 and val_04 is false")
        }

        
        print(type(of: val_03))
        print(Int.max)
        
        let varBinary = 0b00001001
        print(varBinary)
        
        let varHex = 0x16
        print(varHex)
        
        let valueForInt = Int.max
        print("Value for Int \(valueForInt)")
        print("Value for Int without variable \(Int.max)")
        
        
        
        let example_01 = 22
        let example_02 = 23.384371045823345
        let example_03: Float = 23.456453
        
        let example_04 = "Hello "
        let example_05 = "World"
        let stringResult = example_04 + example_05
        print(stringResult)
        print("Hi " + "world")
        
        var example_06 = 4
        print(example_06)
        example_06 += 2
        print(example_06)
        
        print("Test: \(example_06.distance(to: example_01))")
        
        var example_07 = 9
        example_07 *= 9
        print("Example_07: \(example_07)")
        
        var example_08 = 0
        example_08 += 1
        print("Example_8:", example_08)
        
        
        //-------------------------------------------
        //Task_01
        let valueForIntMax = Int.max
        let valueForIntMin = Int.min
        let valueForInt8Min = Int8.min
        let valueForInt8Max = Int8.max
        let valueForInt16Min = Int16.min
        let valueForInt16Max = Int16.max
        let valueForInt32Min = Int32.min
        let valueForInt32Max = Int32.max
        let valueForInt64Min = Int64.min
        let valueForInt64Max = Int64.max
        
        print("\n")
        print("Integer minimum value: \(valueForIntMin)  |\tInteger maximum value: \(valueForIntMax)")
        print("Integer8 minimum value: \(valueForInt8Min)  |\tInteger8 maximum value: \(valueForInt8Max)")
        print("Integer16 minimum value: \(valueForInt16Min)  |\tInteger16 maximum value: \(valueForInt16Max)")
        print("Integer32 minimum value: \(valueForInt32Min)  |\tInteger16 maximum value: \(valueForInt32Max)")
        print("Integer64 minimum value: \(valueForInt64Min)  |\tInteger64 maximum value: \(valueForInt64Max)\n")
        
        
        
        let valueForUIntMin = UInt.min
        let valueForUIntMax = UInt.max
        let valueForUInt8Min = UInt8.min
        let valueForUInt8Max = UInt8.max
        let valueForUInt16Min = UInt16.min
        let valueForUInt16Max = UInt16.max
        let valueForUInt32Min = UInt32.min
        let valueForUInt32Max = UInt32.max
        let valueForUInt64Min = UInt64.min
        let valueForUInt64Max = UInt64.max
        
        print("UInt minimum value: \(valueForUIntMin)  |\tUInt maximum value: \(valueForUIntMax)")
        print("UInt8 minimum value: \(valueForUInt8Min)  |\tUInt8 maximum value: \(valueForUInt8Max)")
        print("UInt16 minimum value: \(valueForUInt16Min)  |\tUInt16 maximum value: \(valueForUInt16Max)")
        print("UInt32 minimum value: \(valueForUInt32Min)  |\tUInt32 maximum value: \(valueForUInt32Max)")
        print("UInt64 minimum value: \(valueForUInt64Min)  |\tUInt64 maximum value: \(valueForUInt64Max)")
        
        let valueForDoubleMin = Double.leastNormalMagnitude
        let valueForDoubleMax = Double.greatestFiniteMagnitude
        
        print("Double minimum value:", valueForDoubleMin, "|\tDouble maximum value:", valueForDoubleMax,"\n")
        
        
        let valueForFloatMin = Float.leastNormalMagnitude
        let valueForFloatMax = Float.greatestFiniteMagnitude
        
        print("Float minimum value: \(valueForFloatMin)  |\tFloat maximum value:", valueForFloatMax)
    
        
        //______________________________________________________
        //Task_02
        
        //Example 01
        let constInt = 1993
        let constDouble = 5555555555.5120583744001235
        let constFloat: Float = 101.613240
        
        print("Constant Integer: \(constInt) \nConstant Double: \(constDouble) \nConstant Float: \(constFloat)")
        
        let resultInt = Int(Double(constInt) + constDouble + Double(constFloat))
        let resultDouble = constDouble + Double(constInt) + Double(constFloat)
        let resultFloat = constFloat + Float(constInt) + Float(constDouble)
        
        print("Result Integer: \(resultInt) \nResult Double: \(resultDouble) \nResult Float: \(resultFloat)")
        
        
        //Example 02
        let varInt = 207
        let varDouble = 1000_000_0000.0
        let varFloat: Float = 0.23
        
        var resInt = 1000
        resInt += varInt
        resInt = resInt + Int(varDouble) + Int(varFloat)
        print(resInt)
        
        var resDouble = 0.0
        resDouble += varDouble
        resDouble = varDouble + Double(resInt) + Double(resultFloat) + Double(varInt)
        print(resDouble)
        
        var resFloat: Float = 0.00
        resFloat += Float(resFloat)
        resFloat = resFloat + Float(0) + resFloat
        print(resFloat)
        
        
        //________________________________________________________________
        //Task 03
        
        if resInt > Int(resultDouble) {
            print("ResInt is more")
        } else if resultDouble > Double(resultFloat) {
            print("Double is more")
        } else {
            print("Float is more")
        }
        
        print(resDouble)
        
        if resInt < Int(resFloat) {
            print("ResInt is small")
        } else if resDouble > Double(resInt) && resDouble > Double(resFloat) {
            print("ResDouble is more")
        } else {
            print("All variables small")
        }
        
        
        
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

