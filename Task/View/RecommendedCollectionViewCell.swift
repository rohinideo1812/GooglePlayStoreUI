//
//  RecommendedCollectionViewCell.swift
//  Task
//
//  Created by Rohini Deo on 23/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class RecommendedCollectionViewCell: UICollectionViewCell {
    
    //Mark:IBOutlets:
    @IBOutlet weak var gifImg: UIImageView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var rate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = 10
        img.layer.masksToBounds = true
        img.layer.shadowColor = UIColor.black.cgColor
        img.layer.shadowOpacity = 0.3
        img.layer.shadowOffset = CGSize.zero
        gifImg.layer.cornerRadius = 10
        gifImg.layer.masksToBounds = true
        gifImg.layer.shadowColor = UIColor.black.cgColor
        gifImg.layer.shadowOpacity = 0.3
        gifImg.layer.shadowOffset = CGSize.zero
    }
    
}
