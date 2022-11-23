//
//  CollectionTableViewCell.swift
//  TestCollectionView
//
//  Created by Manuel Enrique Amores Gonzalez on 10/11/22.
//

import UIKit

class CollectionTableViewCell: UITableViewCell{
    
    static let identifier = "CollectionTableViewCell"
    
    static func nib() -> UINib {
        return UINib( nibName: "CollectionTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
