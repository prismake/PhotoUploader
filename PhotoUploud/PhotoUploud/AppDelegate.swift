//
//  AppDelegate.swift
//  PhotoUploud
//
//  Created by Marcin Nowowiejski on 25/01/2019.
//  Copyright © 2019 Marcin Nowowiejski. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    lazy var persistentContext: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores() {_, error in
            if let error = error {
                fatalError("\(error)")
            }
        }
        
        return container
    }()
    
    func saveContext() {
        let context = persistentContext.viewContext
        if context.hasChanges {
            do {
                try context.save()
            }catch {
                fatalError("saveContextError")
            }
        }
    }


}

