//
//  Item.swift
//  Todome
//
//  Created by Konstantin on 09/03/2019.
//  Copyright © 2019 Konstantin. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object{
    
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    let parentCategory = LinkingObjects(fromType: Category.self, property: "items")
        
}
