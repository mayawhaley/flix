//
//  MovieDetailsViewController.swift
//  flix2
//
//  Created by Maya W on 2/5/20.
//  Copyright © 2020 Maya W. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

	
	@IBOutlet weak var backdropView: UIImageView!
	@IBOutlet weak var posterView: UIImageView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var synopsisLabel: UILabel!
	
	var movie:[String:Any]!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
	titleLabel.text = movie["title"] as? String
	titleLabel.sizeToFit()
	synopsisLabel.text = movie["overview"] as? String
	synopsisLabel.sizeToFit()
	
	
	let baseURL = "https://image.tmdb.org/t/p/w185"
	
	let posterPath = movie["poster_path"] as! String
	
	let posterUrl = URL(string: baseURL + posterPath)
	    
	posterView.af_setImage(withURL: posterUrl!)
	
	let baseURL2 = "https://image.tmdb.org/t/p/w780"
	
	let backdropPath = movie["backdrop_path"] as! String
	let backdropUrl = URL(string: baseURL2 + backdropPath)
	backdropView.af_setImage(withURL: backdropUrl!)
	

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
