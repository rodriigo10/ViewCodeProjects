//
//  MoviesListTableViewCell.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 31/05/22.
//

import UIKit
import SDWebImage

class MoviesListTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func makeCellMoviesList(object: Content? ) {
        let imageUrl = URL(string: object?.images?.first?.url ?? "")
        imageCell.sd_setImage(with: imageUrl)
        labelCell.text = object?.title ?? ""
    }
}
