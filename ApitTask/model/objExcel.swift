//
//  objExcel.swift
//  ApitTask
//
//  Created by Amr on 10/1/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import Foundation

class objExcel{
    var aCTIONDATETIME : String!
    var aCTIONNOTE : String!
    var aCTIONTAKEN : String!
    var aCTIONUSER : String!
    var sYSKEY : String!
    
    convenience init(fromDictionary dictionary: [String:Any]){
        self.init()
        aCTIONDATETIME = dictionary["ACTION_DATETIME"] as? String
        aCTIONNOTE = dictionary["ACTION_NOTE"] as? String
        aCTIONTAKEN = dictionary["ACTION_TAKEN"] as? String
        aCTIONUSER = dictionary["ACTION_USER"] as? String
        sYSKEY = dictionary["SYSKEY"] as? String
    }
}
