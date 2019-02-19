//
//  Location+CoreDataProperties.swift
//  MyLocation
//
//  Created by Bing Tian on 2/17/19.
//  Copyright © 2019 tianbing. All rights reserved.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var date: NSDate?
    @NSManaged public var locationDescription: String?
    @NSManaged public var category: String?
    @NSManaged public var placemark: NSObject?

}
