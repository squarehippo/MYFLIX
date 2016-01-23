//
//  MovieCell.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/19/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var moviePlot: UITextView!
    @IBOutlet weak var movieIMDB: UIButton!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func launchIMDB(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.google.com")!)
    }
    
    func configureCell(movie: Movies) {
        movieTitle.text = movie.title
        moviePlot.text = movie.plot
        movieYear.text = movie.year
        movieRating.text = movie.rating
        movieImage.image = movie.getMovieImage()
        movieImage.clipsToBounds = true
    }
}
