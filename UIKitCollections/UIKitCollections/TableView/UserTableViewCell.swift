//
//  UserTableViewCell.swift
//  UIKitCollections
//
//  Created by Manuel Enrique Amores Gonzalez on 3/11/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier = String(describing: UserTableViewCell.self)
    
    func render(name: String, jobDescription: String, image: URL? ){
        nameLabel.text = name
        jobLabel.text = jobDescription
    }

}
