//
//  ViewController.swift
//  IamRich
//
//  Created by Manuel Enrique Amores Gonzalez on 26/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyView: UIView!
    var baseFrame = CGRect()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        baseFrame = storyView.frame
        let proView = addProgrammingview()
        self.view.addSubview(proView)
        addXibView(parent: proView)
    }

    func addXibView(parent: UIView){
            let bundle = Bundle(for: XibView.self)
            let nib = UINib(nibName: "XibView", bundle: bundle)
            
            let view = nib.instantiate(withOwner: self,options: nil)[0] as! UIView
            
            
            self.view.addSubview(view)
            view.frame = CGRect(x: 0.0,
                                y: parent.frame.origin.y + parent.frame.size.height + 15,
                                width: baseFrame.width,
                                height: baseFrame.height)
        }
        
        func addProgrammingview() -> UIView {
            let proview = UIView()
            proview.frame = CGRect(x: 0.0, y: baseFrame.origin.y + baseFrame.height + 15, width: baseFrame.width, height: baseFrame.height)
            
            proview.backgroundColor = .blue
            let label = UILabel()
            let labelFrame = CGRect(x: 0, y: 0, width: proview.frame.width, height: 44.0)
            label.frame = labelFrame
            label.text = "Programing"
            label.textColor = .white
            
            proview.addSubview(label)
            //Constraint null by automization
            label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate(
            [
                label.centerXAnchor.constraint(equalTo: proview.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: proview.centerYAnchor)
            ]
            )
            
            return proview
        }
}

