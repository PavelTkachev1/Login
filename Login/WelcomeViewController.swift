//
//  WelcomeViewController.swift
//  Login
//
//  Created by Павел Ткачев on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

   
    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, " + userName + "!"
        
    }
    

  
}
