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
    
    init(role:Int, token:String, tokenType:String) {
        self.role = role
        self.token = token
        self.tokenType = tokenType
    }
    
}
