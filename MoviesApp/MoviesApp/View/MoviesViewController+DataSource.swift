//
//  MoviesViewController+DataSource.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 31/05/22.
//

import UIKit

extension MoviesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.numberOfrows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: controller.identifierCell, for: indexPath) as? MoviesListTableViewCell {
            cell.makeCellMoviesList(object: controller.getCellByIndex(indexPath: indexPath))
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
