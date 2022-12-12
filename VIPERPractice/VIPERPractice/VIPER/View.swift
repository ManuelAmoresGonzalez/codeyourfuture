//
//  View.swift
//  VIPERPractice
//
//  Created by Manuel Enrique Amores Gonzalez on 24/11/22.
//

import Foundation
import UIKit

protocol AnyView {
    
    var presented: AnyPresenter? { get set }
    
    func update(with users: [User])
    func update(with error: String)
}

class UserViewController: UIViewController, AnyView, UITableViewDataSource, UITableViewDelegate{
    
    
    var presented: AnyPresenter?
    

    
    
    var presenter: AnyPresenter?
    
    var users: [User] = []
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableView.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        view.backgroundColor = .systemBlue
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    func update(with users: [User]) {
        <#code#>
    }
    
    func update(with error: String) {
        <#code#>
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
}
