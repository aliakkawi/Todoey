//
//  Item.swift
//  Todoey
//
//  Created by Ali Akkawi on 14/08/2018.
//  Copyright © 2018 Ali Akkawi. All rights reserved.
//

import Foundation

class Item {
    
    public private(set) var name: String
    public var isDone: Bool
    
    
    init(name: String, isDone: Bool) {
        
        
        self.name = name
        self.isDone = isDone
    }
}
