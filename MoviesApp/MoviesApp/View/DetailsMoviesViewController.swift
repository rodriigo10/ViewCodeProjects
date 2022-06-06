//
//  DetailsMoviesViewController.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 01/06/22.
//

import UIKit
import SDWebImage

class DetailsMoviesViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailTextDetails: UILabel!
    
    let detailController = DetailMoviesController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDetailsMovies()
        
    }
    
    func getDetailsMovies() {
        let imageUrl = URL(string: detailController.imageURL)
        detailImage.sd_setImage(with: imageUrl)
        detailLabel.text = detailController.titleDetailMovies
        detailTextDetails.text = detailController.descriptionDetailMovies
    }
}
