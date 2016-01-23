//
//  Movies+CoreDataProperties.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/19/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movies {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var plot: String?
    @NSManaged var year: String?
    @NSManaged var rating: String?
    @NSManaged var imdb: String?

}
