//
//  Category.swift
//  Todome
//
//  Created by Konstantin on 09/03/2019.
//  Copyright © 2019 Konstantin. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object{
    
    @objc dynamic var name: String = ""
    let items = List<Item>()
}