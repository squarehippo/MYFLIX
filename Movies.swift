//
//  Movies.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/19/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movies: NSManagedObject {

    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
