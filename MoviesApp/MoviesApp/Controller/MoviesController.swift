//
//  MoviesController.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 31/05/22.
//

import UIKit

class MoviesController: NSObject {

    let request = Request()
    var movies: Movies?
    
    
    var numberOfrows: Int {
        return movies?.contents?.count ?? 0
    }
    
    var identifierCell: String {
        return "cell"
    }
    
    var identifierNibname: String {
        return "MoviesListTableViewCell"
    }
    
    func requestMovies(completion: @escaping (Bool) -> Void) {
        request.makeRequest { moviesList, success in
            if success {
                self.movies = moviesList
                completion(true)
            }else {
                completion(false)
            }
        }
    }
    
    func getCellByIndex(indexPath: IndexPath) -> Content? {
        return movies?.contents?[indexPath.row]
    }
    
}
