//
//  RichViewController.swift
//  IamRich
//
//  Created by Manuel Enrique Amores Gonzalez on 26/10/22.
//

import UIKit

class RichViewController: UIViewController{
    @IBOutlet weak var storyButtom: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonRIch(_ sender: Any) {
        print("Se presiona")
        let newAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let newAlertController = UIAlertController(title: "I am Rich", message: "I am a millionaire", preferredStyle: .alert)
        newAlertController.addAction(newAction)
        present(newAlertController, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        storyButtom.setTitle("Story Button", for: .normal)
    }
}
