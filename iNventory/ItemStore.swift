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
    
    let itemArchiveUrl: NSURL = {
        let documentsDirectories = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.URLByAppendingPathComponent("items.archive")
    }()
    
    init() {
        if let archivedItems = NSKeyedUnarchiver.unarchiveObjectWithFile(itemArchiveUrl.path!) as? [Item] {
            allItems += archivedItems
        }
    }
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    func saveChanges() -> Bool {
        print("Saving items to: \(itemArchiveUrl.path!)")
        return NSKeyedArchiver.archiveRootObject(allItems, toFile: itemArchiveUrl.path!)
    }
    
    func removeItem(item: Item) {
        if let index = allItems.indexOf(item) {
            allItems.removeAtIndex(index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex]
        allItems.removeAtIndex(fromIndex)
        allItems.insert(movedItem, atIndex: toIndex)
    }
}
