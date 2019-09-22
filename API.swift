//
//  API.swift
//  FindNewHolidays
//
//  Created by user on 9/21/19.
//  Copyright © 2019 eric. All rights reserved.
//

import Foundation
struct response:Decodable
{var response:holidays}

struct holidays:Decodable
{var holidays:[detail]}

struct detail:Decodable {
    var name:String
    
    var date:date
    
    

}

struct date:Decodable {
    var iso:String
}


