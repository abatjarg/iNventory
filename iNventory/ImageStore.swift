//
//  ImageStore.swift
//  iNventory
//
//  Created by Ariunjargal on 3/5/16.
//  Copyright © 2016 Ariunjargal. All rights reserved.
//

import UIKit

class ImageStore {
    
    let cache = NSCache()
    
    func setImage(image: UIImage, forKey key:String) {
        cache.setObject(image, forKey: key)
    }
    
    func imageForkey(key: String) -> UIImage? {
        return cache.objectForKey(key) as? UIImage
    }
    
    func deleteImageForKey(key: String) {
        cache.removeObjectForKey(key)
    }
    
}
