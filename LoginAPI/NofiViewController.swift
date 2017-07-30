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
    var datajson: dataJSON?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nofiLabelAutolayout()
        returnButtonAutoLayOut()
        // Do any additional setup after loading the view.
        nofiLabel.text = (" \(String(describing: datajson?.role)) \n \(String(describing: datajson?.token)) \n\(String(describing: datajson?.tokenType))")
    }

    func nofiLabelAutolayout() {
        nofiLabel.translatesAutoresizingMaskIntoConstraints = false
        nofiLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addSubview(nofiLabel)
        NSLayoutConstraint(item: nofiLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: nofiLabel, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
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
