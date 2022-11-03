//
//  ViewController.swift
//  UIKitCollections
//
//  Created by Manuel Enrique Amores Gonzalez on 3/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTableView: UITableView!
    
    private var users = [UserDataModel(name: "Johana", jobDescription: "IOS Developer 1, ReactJS, Angular 11, Albañil, Mesera"), UserDataModel(name: "Daniel", jobDescription: "IOS Developer 2"), UserDataModel(name: "Manuel", jobDescription: "IOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "IOS Developer 4"),UserDataModel(name: "Johana", jobDescription: "IOS Developer 1, ReactJS, Angular 11, Albañil, Mesera"), UserDataModel(name: "Daniel", jobDescription: "IOS Developer 2"), UserDataModel(name: "Manuel", jobDescription: "IOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "IOS Developer 4"),UserDataModel(name: "Johana", jobDescription: "IOS Developer 1, ReactJS, Angular 11, Albañil, Mesera"), UserDataModel(name: "Daniel", jobDescription: "IOS Developer 2"), UserDataModel(name: "Manuel", jobDescription: "IOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "IOS Developer 4"),UserDataModel(name: "Johana", jobDescription: "IOS Developer 1, ReactJS, Angular 11, Albañil, Mesera"), UserDataModel(name: "Daniel", jobDescription: "IOS Developer 2"), UserDataModel(name: "Manuel", jobDescription: "IOS Developer 3"), UserDataModel(name: "Mario", jobDescription: "IOS Developer 4")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    private func setUpTableView(){
        userTableView.dataSource = self
        userTableView.delegate = self
      //  userTableView.estimatedRowHeight = UITableView.automaticDimension
      //  userTableView.rowHeight = UITableView.automaticDimension
        userTableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell else{
            return UITableViewCell()
        }
        
        let user = users[indexPath.row]
        cell.render(name: user.name, jobDescription: user.jobDescription, image: nil)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        let alert = UIAlertController(title: user.name, message: user.jobDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            
        }))
        present(alert, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0){
            return 100
        }
        return 80
    }
}
