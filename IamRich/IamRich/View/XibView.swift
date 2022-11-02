//
//  XibView.swift
//  IamRich
//
//  Created by Manuel Enrique Amores Gonzalez on 26/10/22.
//

import UIKit

class XibView: UIView {

    
    @IBOutlet weak var XibLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews(){
        XibLabel.text = "XIB"
    }
}
