//
//  ViewController.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 31/05/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    let controller = MoviesController()

    @IBOutlet weak var moviesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        makeRequest()
    }

    func setupTableView(){
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        moviesTableView.register(UINib(nibName: controller.identifierNibname, bundle: nil ), forCellReuseIdentifier: controller.identifierCell )
    }

    func makeRequest(){
        controller.requestMovies { success in
            if success {
                self.moviesTableView.reloadData()
            }
        }
    }
}
