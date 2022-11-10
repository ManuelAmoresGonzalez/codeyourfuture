//
//  UserCollectionViewCell.swift
//  UIKitCollections
//
//  Created by Manuel Enrique Amores Gonzalez on 8/11/22.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: UserCollectionViewCell.self)
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var jobDescriptionLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func render( name: String, jobDescription: String, imageUrl: URL?){
        nameLabel.text = name
        jobDescriptionLabel.text = jobDescription
        userImageView.backgroundColor = UIColor.red        
    }
}
