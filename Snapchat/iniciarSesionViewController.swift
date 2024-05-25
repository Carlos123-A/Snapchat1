//
//  iniciarSesionViewController.swift
//  Snapchat
//
//  Created by Carlos Aguilar on 25/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSessionViewController: UIViewController{
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text! ) { (user, error)  in print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguente error \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
