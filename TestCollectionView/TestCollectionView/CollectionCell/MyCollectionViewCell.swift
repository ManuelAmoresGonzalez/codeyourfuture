//
//  MyCollectionViewCell.swift
//  TestCollectionView
//
//  Created by Manuel Enrique Amores Gonzalez on 10/11/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    public func configure(with model: Model){
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
    }
    
}
