//
//  RecommendedTableViewCell.swift
//  Task
//
//  Created by Rohini Deo on 23/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class RecommendedTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    //Mark:IBOutlet:
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    //Mark:Properties:
    var height : CGFloat = 0.0
    var recommendedData : [RecommendedModel] = [RecommendedModel(title: "Candy crush", subTitle: "Casual Puzzle", gifImg: "sugarcrush", img: "img_candyCrush", rate: "4.6*"),RecommendedModel(title: "Gareena", subTitle: "Action Game", gifImg: "gareena", img: "img_gareena", rate: "4.6*"),RecommendedModel(title: "AmongUs", subTitle: "Acion Puzzle", gifImg: "AmongusDpad", img: "img_amongus", rate: "4.6*"),RecommendedModel(title: "Block Puzzle", subTitle: "Casual Puzzle", gifImg: "blockPuzzleGame", img: "img_blockPuzzle", rate: "4.6*"),RecommendedModel(title: "Candy crush", subTitle: "Casual Puzzle", gifImg: "sugarcrush", img: "img_candyCrush", rate: "4.6*"),RecommendedModel(title: "Gareena", subTitle: "Action Game", gifImg: "gareena", img: "img_gareena", rate: "4.6*"),RecommendedModel(title: "AmongUs", subTitle: "Acion Puzzle", gifImg: "AmongusDpad", img: "img_amongus", rate: "4.6*"),RecommendedModel(title: "Block Puzzle", subTitle: "Casual Puzzle", gifImg: "blockPuzzleGame", img: "img_blockPuzzle", rate: "4.6*")]
    
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
        return self.recommendedData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendedCollectionViewCell", for: indexPath) as! RecommendedCollectionViewCell
        cell.gifImg.loadGif(name:self.recommendedData[indexPath.row].gifImg)
        cell.img.image = UIImage(named:self.recommendedData[indexPath.row].img)
        cell.title.text = self.recommendedData[indexPath.row].title
        cell.subTitle.text = self.recommendedData[indexPath.row].subTitle
        cell.rate.text = self.recommendedData[indexPath.row].rate
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width * 0.5, height: 230)
    }
   
}

