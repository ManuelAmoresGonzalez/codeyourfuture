//
//  HomeViewController.swift
//  MVCPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var welcomeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = NetworkService.shared.getLoggedInUser()
        welcomeUser()
        
    }
    
    private func welcomeUser( ){
        welcomeLbl.text = "Entre"
    }
   

}
