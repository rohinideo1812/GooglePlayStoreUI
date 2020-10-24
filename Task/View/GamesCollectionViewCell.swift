//
//  GamesCollectionViewCell.swift
//  Task
//
//  Created by Rohini Deo on 24/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class GamesCollectionViewCell: UICollectionViewCell {
    
    //Mark:IBOutlets:
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.layer.cornerRadius = 10
        imgView.layer.masksToBounds = true
        imgView.layer.shadowColor = UIColor.black.cgColor
        imgView.layer.shadowOpacity = 0.3
        imgView.layer.shadowOffset = CGSize.zero
    }
    
}
