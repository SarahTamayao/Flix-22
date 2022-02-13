//
//  MovieDetailsViewController.swift
//  Tipster
//
//  Created by Karan Pandya on 2/7/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        //The lcoation that the AI stores the posters
        let rootURL = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: rootURL + posterPath)
        
        posterView.af.setImage(withURL: posterURL!)
        
        let backDropRootURL = "https://image.tmdb.org/t/p/w780"
        
        let backDropPath = movie["backdrop_path"] as! String
        let backDropURL = URL(string: backDropRootURL + backDropPath)
        
        backDropView.af.setImage(withURL: backDropURL!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }
    */

}
