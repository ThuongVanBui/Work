//
//  Data.swift
//  LoginAPI
//
//  Created by Bùi Văn Thương on 7/27/17.
//  Copyright © 2017 Bùi Văn Thương. All rights reserved.
//

import Foundation

class dataJSON {
    var code : Int!
    var message : String!
    var role: Double!
    var token: String!
    var tokenType: String!
    init?(code: Int,dataJS:[String:Any],message:String) {
        self.code = code
       guard let role = dataJS["role"] as? Double,
        let token = dataJS["token"] as? String,
        let tokenType = dataJS["tokenType"] as? String
        else{return nil}
        self.role = role
        self.token = token
        self.tokenType = tokenType
        self.message = message
    }
}
