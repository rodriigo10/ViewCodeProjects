//
//  MoviesViewController+Delegate.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 31/05/22.
//

import UIKit

extension MoviesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let goToDetails = self.storyboard?.instantiateViewController(withIdentifier: "detailMovies") as? DetailsMoviesViewController {
            let moviesDetails = goToDetails
            moviesDetails.detailController.moviesDetail(content: controller.getCellByIndex(indexPath: indexPath))
            
            self.navigationController?.pushViewController(moviesDetails, animated: true)
        }
        
    }
}

