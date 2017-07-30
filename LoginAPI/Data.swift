//
//  Data.swift
//  LoginAPI
//
//  Created by Bùi Văn Thương on 7/27/17.
//  Copyright © 2017 Bùi Văn Thương. All rights reserved.
//

import Foundation
class dataJSON {
    var role: Int
    var token: String?
    var tokenType: String?
    
    init?(jSonDict: [String:Any]) {
        guard let role = jSonDict["role"] as? Int else { return nil}
        guard let token = jSonDict["token"] as? String else { return nil}
        guard let tokenType = jSonDict["tokenType"] as? String else { return nil }
        self.role = role
        self.token = token
        self.tokenType = tokenType
    }
    
}
