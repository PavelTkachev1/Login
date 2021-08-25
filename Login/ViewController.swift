//
//  ViewController.swift
//  Login
//
//  Created by Павел Ткачев on 25.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let username = "Pavel"
    let password = "Q1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
   

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    
    @IBAction func forgotUserNameBP() {
        showAlert(with: "Oops!", and: "Your name is \(username)")
    }
   
    @IBAction func forgotPasswordBP() {
        showAlert(with: "Oops!", and: "Your password is \(password)")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
   
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert (with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
