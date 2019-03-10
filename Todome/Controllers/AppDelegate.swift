//
//  AppDelegate.swift
//  Todome
//
//  Created by Konstantin on 04/03/2019.
//  Copyright © 2019 Konstantin. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var realm: Realm!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //print("didFinishLaunchingWithOptions")
        
        
        //get UserDefaults as file
        //print(NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true))
        
        ///Users/konstantin/Library/Developer/CoreSimulator/Devices/13BED165-096C-4982-98E5-5C625DEBD8D5/data/Containers/Data/Application/D0D79E2F-087E-4D40-A3DB-6F94928AE394/Library
        
        // Preferences/com.grahovsky.Todome.plist
        
//        let config = Realm.Configuration(
//            schemaVersion: 1,
//            migrationBlock: { migration, oldSchemaVersion in
//                if (oldSchemaVersion < 1) {
//                    // Nothing to do!
//                    // Realm will automatically detect new properties and removed properties
//                    // And will update the schema on disk automatically
//                }
//        })
//        Realm.Configuration.defaultConfiguration = config

        do {
            realm = try Realm()
        } catch {
            print("Error initialising new realm, \(error.localizedDescription)")
        }
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        ///Users/konstantin/Library/Developer/CoreSimulator/Devices/13BED165-096C-4982-98E5-5C625DEBD8D5/data/Containers/Data/Application/133E2234-B433-4A8C-A8C2-F2E120F13B6B/Documents/
        
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
        self.saveContext()
        
    }
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

