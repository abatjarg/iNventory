//
//  ItemCell.swift
//  iNventory
//
//  Created by Ariunjargal on 3/5/16.
//  Copyright © 2016 Ariunjargal. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    func updateLabels() {
        let bodyFont = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        
        let caption1Font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)
        serialNumberLabel.font = caption1Font
    }
    
    func setValueLabelRed() {
        valueLabel.textColor = UIColor.redColor()
    }
    
    func setValueLabelGreen() {
        valueLabel.textColor = UIColor.greenColor()
    }
}
