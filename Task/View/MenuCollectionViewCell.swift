//
//  MenuCollectionViewCell.swift
//  Task
//
//  Created by Rohini Deo on 23/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    //Mark:IBOutlets:
    @IBOutlet weak var tabLine: UILabel!
    @IBOutlet weak var menuTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.tabLine.layer.cornerRadius = 0.5
        self.tabLine.layer.masksToBounds = false
    }
}
