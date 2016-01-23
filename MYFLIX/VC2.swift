//
//  VC2.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/22/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

//
//  ViewController.swift
//  MYFLIX
//
//  Created by Brian Wilson on 1/19/16.
//  Copyright © 2016 GetRunGo. All rights reserved.
//

//import UIKit
//import CoreData
//
//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    
//    @IBOutlet weak var tableView: UITableView!
//    var movies = [Movies]()
//    var imdbLink = ""
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//    
//    override func viewWillAppear(animated: Bool) {
//        fetchAndSetResults()
//        tableView.reloadData()
//    }
//    
//    func fetchAndSetResults() {
//        let app = UIApplication.sharedApplication().delegate as! AppDelegate
//        let context = app.managedObjectContext
//        let fetchRequest = NSFetchRequest(entityName: "Movies")
//        
//        do {
//            let results = try context.executeFetchRequest(fetchRequest)
//            self.movies = results as! [Movies]
//        } catch let err as NSError {
//            print(err.debugDescription)
//        }
//    }
//    
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCellWithIdentifier("MovieCell") as? MovieCell {
//            let movie = movies[indexPath.row]
//            cell.configureCell(movie)
//            imdbLink = movies[indexPath.row].imdb!
//            return cell
//        } else {
//            return MovieCell()
//        }
//    }
//    
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = .clearColor()
//    }
//    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return movies.count
//    }
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        performSegueWithIdentifier("goToMovieDetail", sender: indexPath)
//    }
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "goToMovieDetail" {
//            if let movieDetailVC = segue.destinationViewController as? MovieDetailsViewController {
//                if let currentIndex = sender as? NSIndexPath {
//                    
//                    movieDetailVC.currentTitle = movies[currentIndex.row].title!
//                    movieDetailVC.currentPlot = movies[currentIndex.row].plot!
//                    movieDetailVC.currentYear = movies[currentIndex.row].year!
//                    movieDetailVC.currentRating = movies[currentIndex.row].rating!
//                    movieDetailVC.currentImage = movies[currentIndex.row].getMovieImage()
//                    movieDetailVC.currentIMDbLink = movies[currentIndex.row].imdb!
//                }
//            }
//        }
//    }
//    
//    @IBAction func openIMDbLink(sender: AnyObject) {
//        if let url = NSURL(string: "http://\(imdbLink)") {
//            UIApplication.sharedApplication().openURL(url)
//        }
//    }
//    
//    
//    
//}
