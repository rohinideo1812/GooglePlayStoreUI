//
//  AddCollectionViewCell.swift
//  Task
//
//  Created by Rohini Deo on 23/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class AddCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.layer.cornerRadius = 10
        imgView.layer.masksToBounds = true
        imgView.layer.shadowColor = UIColor.black.cgColor
        imgView.layer.shadowOpacity = 0.3
        imgView.layer.shadowOffset = CGSize.zero
    }
}
