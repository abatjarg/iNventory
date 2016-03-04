//
//  ItemStore.swift
//  iNventory
//
//  Created by Ariunjargal on 3/3/16.
//  Copyright © 2016 Ariunjargal. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    init(){
        for _ in 0..<5 {
            createItem()
        }
    }
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
}
