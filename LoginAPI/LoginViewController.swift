//
//  LoginViewController.swift
//  LoginAPI
//
//  Created by Bùi Văn Thương on 7/26/17.
//  Copyright © 2017 Bùi Văn Thương. All rights reserved.
//

import UIKit
import CryptoSwift
class LoginViewController: UIViewController {
    let titleLabel = UILabel()
    let userLabel = UILabel( )
    let passLabel = UILabel( )
    
    let userTextField = UITextField( )
    let passTextField = UITextField( )
    
    let loginButton = UIButton()
    var code : Int!
    var message : String!
    var role: Double!
    var token: String!
    var tokenType: String!
   var datas: dataJSON!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        titleAutoLayout()
        userLabelAutolayout()
        passLabelAutolayout()
        userTextFieldAutolayout()
        passTextFieldAutolayout()
        loginButtonAutolayout()
    }
    func titleAutoLayout(){
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Login Form"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        titleLabel.font = UIFont(name: "Times New Roman", size: 24.0)
        view.addSubview(titleLabel)
        NSLayoutConstraint(item: titleLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/10, constant: 0).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
    }
    func userLabelAutolayout(){
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        userLabel.text = "User:"
        userLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        userLabel.font = UIFont(name: "Times New Roman", size: 17.0)
        view.addSubview(userLabel)
        NSLayoutConstraint(item: userLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80.0).isActive = true
        NSLayoutConstraint(item: userLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 21.0).isActive = true
        NSLayoutConstraint(item: userLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1.0, constant: 40.0).isActive = true
        NSLayoutConstraint(item: userLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 20.0).isActive = true
    }
    func passLabelAutolayout(){
        passLabel.translatesAutoresizingMaskIntoConstraints = false
        passLabel.text = "Password:"
        passLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passLabel.font = UIFont(name: "Times New Roman", size: 17.0)
        view.addSubview(passLabel)
        NSLayoutConstraint(item: passLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80.0).isActive = true
        NSLayoutConstraint(item: passLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 21.0).isActive = true
        NSLayoutConstraint(item: passLabel, attribute: .leading, relatedBy: .equal, toItem: userLabel, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: passLabel, attribute: .top, relatedBy: .equal, toItem: userLabel, attribute: .bottom, multiplier: 1.0, constant: 20.0).isActive = true
        NSLayoutConstraint(item: passLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 20.0).isActive = true
    }
    func userTextFieldAutolayout(){
        userTextField.translatesAutoresizingMaskIntoConstraints = false
        userTextField.font = UIFont(name: "Times New Roman", size: 17.0)
        userTextField.placeholder = "Enter username!"
        userTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        userTextField.layer.borderColor = UIColor.gray.cgColor
        userTextField.layer.borderWidth = 1.0
        userTextField.layer.cornerRadius = 5.0
        userTextField.autocapitalizationType = UITextAutocapitalizationType.none
        view.addSubview(userTextField)
        NSLayoutConstraint(item: userTextField, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 160).isActive = true
        NSLayoutConstraint(item: userTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant:30.0).isActive = true
        NSLayoutConstraint(item: userTextField, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1.0, constant: 35.0).isActive = true
        NSLayoutConstraint(item: userTextField, attribute: .left, relatedBy: .lessThanOrEqual, toItem: userLabel, attribute: .right, multiplier: 1.0, constant: 10.0).isActive = true
        //NSLayoutConstraint(item: userTextField, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 100).isActive = true
    }
    func passTextFieldAutolayout(){
        passTextField.translatesAutoresizingMaskIntoConstraints = false
        passTextField.font = UIFont(name: "Times New Roman", size: 17.0)
        passTextField.placeholder = "Enter password!"
        passTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passTextField.layer.borderColor = UIColor.gray.cgColor
        passTextField.layer.borderWidth = 1.0
        passTextField.layer.cornerRadius = 5.0
        userTextField.autocapitalizationType = UITextAutocapitalizationType.none
        passTextField.isSecureTextEntry = true
        view.addSubview(passTextField)
        //        NSLayoutConstraint(item: passTextField, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 160).isActive = true
        NSLayoutConstraint(item: passTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant:30.0).isActive = true
        NSLayoutConstraint(item: passTextField, attribute: .leading, relatedBy: .equal, toItem: userTextField, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: passTextField, attribute: .trailing, relatedBy: .equal, toItem: userTextField, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: passTextField, attribute: .top, relatedBy: .equal, toItem: userTextField, attribute: .bottom, multiplier: 1.0, constant: 11.0).isActive = true
        NSLayoutConstraint(item: passTextField, attribute: .left, relatedBy: .lessThanOrEqual, toItem: passLabel, attribute: .right, multiplier: 1.0, constant: 10.0).isActive = true
    }
    func loginButtonAutolayout(){
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Sign In", for: UIControlState.normal)
        loginButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        loginButton.layer.borderWidth = 1.0
        loginButton.layer.borderColor = UIColor.gray.cgColor
        loginButton.layer.cornerRadius = 5.0
        loginButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 17.0)
        view.addSubview(loginButton)
        //        NSLayoutConstraint(item: passTextField, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 160).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant:30.0).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: passTextField, attribute: .bottom, multiplier: 1.0, constant: 20.0).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .centerX, relatedBy: .equal, toItem: view , attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        loginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
//    func parseData(jsonDATA:[String:Any]) -> [dataJSON]? {
//        var dataAR = [dataJSON]()
//        
//    }
    
    func buttonAction(sender: UIButton!) {
        print("Tap")
        let myVC = storyboard?.instantiateViewController(withIdentifier: "Notifi") as! NofiViewController
        let userLogin = userTextField.text
        let passLogin = (passTextField.text)?.md5()
        let param = ["username": userLogin,"password":passLogin]
        var request = URLRequest(url: URL(string: "http://ooh-api.ntex.vn/auth/login")!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: param, options: []) else {
            return
        }
        request.httpBody = httpBody
        let  session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let responses = response
            {
                print(responses)
            }
            if let data = data{
                    do{
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String:AnyObject]
                        print(json)
                        if let code = json["code"] as? Int
                        {
                                
                        }
//                        self.code = json["code"] as? Int
//                        self.role = json["data"]?["role"] as! Double
//                        self.token = json["data"]?["token"] as! String
//                        self.tokenType = json["data"]?["tokenType"] as! String
//                        self.message = json["messages"] as? String
//                        print("core\(self.code)")
//                        print(self.role!)
//                        print(self.token)
//                        print(self.tokenType)
//                        print("message\(self.message)")
//                        myVC.nofiLabel.text = ("code:\(self.code),\n\nrole:\(self.role),\n\ntoken:\(self.token),\n\ntokenType:\(self.tokenType)")
//                        
//                        print(self.message)
                }catch let error{
                    print(error)
                   }
            }

        }.resume()
        self.present(myVC, animated: true, completion: nil)
                   }
   
}
