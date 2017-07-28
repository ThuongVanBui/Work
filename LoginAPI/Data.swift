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
    var datas: (code: Double, token: String, tokenType:String)
    
    init?(dataJS:[String:Any]) {
        
       guard let code = dataJS["code"] as? Int,
        let dataDL = dataJS["data"] as? [String:Any],
        let role = dataDL["role"] as? Double,
        let token = dataDL["token"] as? String,
        let tokenType = dataDL["tokenType"] as? String,
        let message = dataJS["messages"] as? String
        else{return nil}
        self.code = code
        self.datas=(role,token,tokenType)
        self.message = message
    }
}
