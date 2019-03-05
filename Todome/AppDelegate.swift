//
//  AppDelegate.swift
//  Todome
//
//  Created by Konstantin on 04/03/2019.
//  Copyright © 2019 Konstantin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //print("didFinishLaunchingWithOptions")
        
        
        //get UserDefaults as file
        print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true))
        
        ///Users/konstantin/Library/Developer/CoreSimulator/Devices/13BED165-096C-4982-98E5-5C625DEBD8D5/data/Containers/Data/Application/D0D79E2F-087E-4D40-A3DB-6F94928AE394/Library
        
        // Preferences/com.grahovsky.Todome.plist
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        //print("applicationDidEnterBackground")
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        //print("applicationWillTerminate")
        
    }


}

