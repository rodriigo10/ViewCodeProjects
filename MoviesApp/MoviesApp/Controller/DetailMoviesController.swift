//
//  DetailMoviesController.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 03/06/22.
//

import UIKit

class DetailMoviesController: NSObject {
    
    var detail: Content?
    
    var imageURL: String {
        return detail?.images?.first?.url ?? ""
    }
    
    var titleDetailMovies: String {
        return detail?.title ?? ""
    }
    
    var descriptionDetailMovies: String {
        return detail?.contentDescription ?? ""
    }
    
    func moviesDetail(content: Content?) {
        self.detail = content
    }
}
