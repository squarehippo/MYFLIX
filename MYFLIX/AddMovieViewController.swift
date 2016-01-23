//
//  AddMovieViewController.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/19/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

import UIKit
import CoreData

class AddMovieViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieYear: UITextField!
    @IBOutlet weak var movieRating: UITextField!
    @IBOutlet weak var movieIMDB: UITextField!
    @IBOutlet weak var moviePlot: UITextView!
    @IBOutlet weak var movieImage: UIImageView!

    
    var imagePicker: UIImagePickerController!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        movieImage.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImage.image = image
    }

    @IBAction func addMovieImage(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addNewMovie(sender: AnyObject) {
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movies", inManagedObjectContext: context)!
            let movie = Movies(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.title = movieTitle.text
            movie.plot = moviePlot.text
            movie.year = movieYear.text
            movie.rating = movieRating.text
            movie.imdb = movieIMDB.text
            movie.setMovieImage(movieImage.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    


}
