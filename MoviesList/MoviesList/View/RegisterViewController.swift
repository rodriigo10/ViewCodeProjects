//
//  RegisterViewController.swift
//  MoviesList
//
//  Created by Rodrigo Garcia on 30/05/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    var auth: Auth?
    
    @IBOutlet weak var registerEmail: UITextField!
    @IBOutlet weak var registerPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.auth = Auth.auth()
        
    }
    
    @IBAction func registerButton(_ sender: Any) {
        
        print("registrado")
    }
    
    @IBAction func registerByGoogle(_ sender: Any) {
    }
    @IBAction func registerByGithub(_ sender: Any) {
    }
    @IBAction func registerByFacebook(_ sender: Any) {
    }
    
}
