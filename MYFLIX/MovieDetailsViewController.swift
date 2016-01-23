//
//  MovieDetailsViewController.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/21/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

import UIKit
import CoreData

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var moviePlot: UITextView!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var backgroundMovieImage: UIImageView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    var currentMovie: Movies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = currentMovie.title
        moviePlot.text = currentMovie.plot
        movieYear.text = currentMovie.year
        movieRating.text = currentMovie.rating
        movieImage.image = currentMovie.getMovieImage()
        backgroundMovieImage.image = currentMovie.getMovieImage()
        
        movieImage.clipsToBounds = true
        backgroundMovieImage.clipsToBounds = true
        blurView.clipsToBounds = true
    }

    @IBAction func openIMBdLink(sender: AnyObject) {
        let currentIMDbLink = currentMovie.imdb!
        print("IMDb = \(currentIMDbLink)")
        if let url = NSURL(string: "http://\(currentIMDbLink)") {
            UIApplication.sharedApplication().openURL(url)
        }
    }

}

