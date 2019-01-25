//
//  ImageHolder+CoreDataClass.swift
//  PhotoUploud
//
//  Created by Marcin Nowowiejski on 25/01/2019.
//  Copyright © 2019 Marcin Nowowiejski. All rights reserved.
//
//

import CoreData
import UIKit

@objc(ImageHolder)
public class ImageHolder: NSManagedObject {

    static func create(insertIntoDB: Bool) -> ImageHolder {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedObjectContext = appDelegate.persistentContext.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "ImageHolder", in: managedObjectContext)
        let media = ImageHolder(entity: entity!, insertInto: insertIntoDB ? managedObjectContext : nil)
        
        do {
            try managedObjectContext.save()
        } catch let error {
            NSLog(error.localizedDescription)
        }
        
        return media
    }
    
}
