//
//  Model.swift
//  MyTask
//
//  Created by Rahul Panchal on 09/12/17.
//  Copyright © 2017 Rahul Panchal. All rights reserved.
//

import Foundation
import ObjectMapper

class Model: NSObject,Mappable {
    var Followers:[Follower]? = []
    var msg = ""
    required init?(map: Map){
      Followers <- map["Followers"]
     msg <- map["msg"]
}
    func mapping(map: Map) {
        Followers <- map["Followers"]
        msg <- map["msg"]
    }
}


class Follower:NSObject,Mappable {
    var Title = ""
    var Description = ""
    var Img = ""
    required init?(map: Map){
        Title <- map["Title"]
        Description <- map["Description"]
         Img <- map["Img"]
    }
    func mapping(map: Map) {
        Title <- map["Title"]
        Description <- map["Description"]
        Img <- map["Img"]
    }
}

