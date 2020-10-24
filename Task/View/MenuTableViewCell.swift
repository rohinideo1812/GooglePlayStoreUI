//
//  MenuTableViewCell.swift
//  Task
//
//  Created by Rohini Deo on 23/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    //Mark:IBOutlet:
    @IBOutlet weak var collectionView: UICollectionView!
    
    //Mark:Properties:
    var menuTitle = [MenuModel(title: "For You", isSelected: true),MenuModel(title: "Top Charts", isSelected: false),MenuModel(title: "Events", isSelected: false),MenuModel(title: "Premium", isSelected: false),MenuModel(title: "Categories", isSelected: false),MenuModel(title: "Children", isSelected: false),MenuModel(title: "Editors", isSelected: false),MenuModel(title: "For You", isSelected: false)]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.menuTitle.count
      }
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        cell.menuTitle.text = self.menuTitle[indexPath.row].title
        if self.menuTitle[indexPath.row].isSelected{
        cell.tabLine.backgroundColor = UIColor.systemGreen
        cell.menuTitle.textColor = UIColor.systemGreen
        }else{
          cell.tabLine.backgroundColor = UIColor.clear
          cell.menuTitle.textColor = UIColor.darkGray
        }
        return cell
    }
      
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          return CGSize(width: 150, height: 50)
      }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        for index in 0..<menuTitle.count{
            menuTitle[index].isSelected = false
        }
        menuTitle[indexPath.row].isSelected = true
        collectionView.reloadData()
    }
}
