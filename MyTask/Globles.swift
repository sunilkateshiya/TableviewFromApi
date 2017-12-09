//
//  Globles.swift
//  MyTask
//
//  Created by Rahul Panchal on 09/12/17.
//  Copyright © 2017 Rahul Panchal. All rights reserved.
//

import UIKit
import ObjectMapper

class Globles: NSObject {
   static let sharedInstance = Globles()
    //var dataModel:Model  = Model(map:Map(mappingType: <#T##MappingType#>, JSON: <#T##[String : Any]#>))
   var dataModel = Mapper<Model>().map(JSON: KEYS.USERINFO)
    var UserID = ""

}
struct Key {
    var value = ""
}
