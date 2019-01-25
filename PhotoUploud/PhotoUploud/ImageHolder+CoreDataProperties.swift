//
//  ImageHolder+CoreDataProperties.swift
//  PhotoUploud
//
//  Created by Marcin Nowowiejski on 25/01/2019.
//  Copyright © 2019 Marcin Nowowiejski. All rights reserved.
//
//

import Foundation
import CoreData


extension ImageHolder {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ImageHolder> {
        return NSFetchRequest<ImageHolder>(entityName: "ImageHolder")
    }

    @NSManaged public var id: Int64
    @NSManaged public var photo: NSData?

}
