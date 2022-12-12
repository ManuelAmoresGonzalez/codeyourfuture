//
//  LoginViewController.swift
//  MVCPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var secondtext: UITextField!
    @IBOutlet weak var firsttext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        firsttext.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        secondtext.addTarget(self, action: #selector(validateFields), for: .editingChanged)
    }
    
    @objc private func validateFields(){
        loginButton.isEnabled = firsttext.text != "" && secondtext.text != ""
    }

    @IBAction func boton(_ sender: Any) {
        guard let email = firsttext.text, let password = secondtext.text else { return }
        
        NetworkService.shared.login(email: email, password: password){
            success in
            
            if success{
                self.goToHomePage()
            }else{
                print("Invalido")
            }
        }
                
    }
    
    private func goToHomePage( ){
        guard let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else{
            return
        }
        
        present(controller, animated: true)
    }
 
    
    internal override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
