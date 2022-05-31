//
//  ViewController.swift
//  MoviesList
//
//  Created by Rodrigo Garcia on 27/05/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class MoviesLoginViewController: UIViewController {
    
    var auth: Auth?
    
    @IBOutlet weak var moviesLoginTextField: UITextField!
    @IBOutlet weak var moviesPasswordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
    }

    @IBAction func loginButton(_ sender: Any) {

//        auth?.signIn(withEmail: <#T##String#>, password: <#T##String#>, completion: <#T##((AuthDataResult?, Error?) -> Void)?##((AuthDataResult?, Error?) -> Void)?##(AuthDataResult?, Error?) -> Void#>)
    }
    
    @IBAction func loginByGoogleButton(_ sender: Any) {
    }
    
    @IBAction func loginByGithubButton(_ sender: Any) {
    }
    
    @IBAction func loginFacebookButton(_ sender: Any) {
    }
    
    @IBAction func loginRegisterButton(_ sender: Any) {
        
        let goToRegister = self.storyboard?.instantiateViewController(withIdentifier: "register")
        if let goToRegisterScreen = goToRegister {
            goToRegisterScreen.modalPresentationStyle = .fullScreen
            self.present(goToRegisterScreen, animated: true, completion: nil)
        }
    }
}
