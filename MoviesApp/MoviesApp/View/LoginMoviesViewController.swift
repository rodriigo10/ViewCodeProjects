//
//  LoginMoviesViewController.swift
//  MoviesApp
//
//  Created by Rodrigo Garcia on 06/06/22.
//

import UIKit

class LoginMoviesViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButton(_ sender: Any) {
        
        let goToMovies = self.storyboard?.instantiateViewController(withIdentifier: "navMainMovies")
        
        if let goMovies = goToMovies {
            goMovies.modalPresentationStyle = .fullScreen
            self.present(goMovies, animated: true, completion: nil)
        }
    }
}
