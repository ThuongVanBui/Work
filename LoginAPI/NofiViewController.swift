//
//  NofiViewController.swift
//  LoginAPI
//
//  Created by Bùi Văn Thương on 7/27/17.
//  Copyright © 2017 Bùi Văn Thương. All rights reserved.
//

import UIKit

class NofiViewController: UIViewController {

    var nofiLabel = UILabel()
    var returnButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        nofiLabelAutolayout()
        returnButtonAutoLayOut()
        
    }

    func nofiLabelAutolayout() {
        nofiLabel.translatesAutoresizingMaskIntoConstraints = false
        nofiLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nofiLabel.numberOfLines = 0
        nofiLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        view.addSubview(nofiLabel)
         NSLayoutConstraint(item: nofiLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant:250).isActive = true
        NSLayoutConstraint(item: nofiLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: nofiLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 50).isActive = true
    }

    func returnButtonAutoLayOut() {
        returnButton.translatesAutoresizingMaskIntoConstraints = false
        returnButton.setTitle("Back", for: .normal)
        returnButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        returnButton.layer.cornerRadius = 5
        view.addSubview(returnButton)
        NSLayoutConstraint(item: returnButton, attribute: .top, relatedBy: .equal, toItem: nofiLabel, attribute: .bottom, multiplier: 1.0, constant: 30.0 ).isActive = true
        NSLayoutConstraint(item: returnButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        returnButton.addTarget(self, action: #selector(back), for: .touchUpInside)
    }
    func back() {
        dismiss(animated: true, completion: nil)
    }
}
