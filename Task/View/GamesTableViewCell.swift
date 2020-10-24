//
//  GamesTableViewCell.swift
//  Task
//
//  Created by Rohini Deo on 24/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    //Mark:IBOutlets:
    @IBOutlet weak var collectionView: UICollectionView!
    
    //Mark:Properties:
    var gamesDetails : [GamesModel] = [GamesModel(title: "Candy Crush Saga", subTitle: "53MB", img: "img_candy"),GamesModel(title: "Hill Climb Game", subTitle: "62MB", img: "img_hillclimb"),GamesModel(title: "Super Mario", subTitle: "53MB", img: "img_mario"),GamesModel(title: "Subway Super Girl", subTitle: "53MB", img: "img_subway"),GamesModel(title: "Candy Crush Saga", subTitle: "53MB", img: "img_candy"),GamesModel(title: "Super Mario", subTitle: "53MB", img: "img_mario"),GamesModel(title: "Hill Climb Game", subTitle: "62MB", img: "img_hillclimb"),GamesModel(title: "Subway Super Girl", subTitle: "53MB", img: "img_subway"),GamesModel(title: "Candy Crush Saga", subTitle: "53MB", img: "img_candy"),GamesModel(title: "Super Mario", subTitle: "53MB", img: "img_mario"),GamesModel(title: "Hill Climb Game", subTitle: "62MB", img: "img_hillclimb"),GamesModel(title: "Subway Super Girl", subTitle: "53MB", img: "img_subway")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        collectionView.register(UINib(nibName: "GamesCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "GamesCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return self.gamesDetails.count
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GamesCollectionViewCell", for: indexPath) as! GamesCollectionViewCell
        cell.imgView.image = UIImage(named: self.gamesDetails[indexPath.row].img)
        cell.title.text =  self.gamesDetails[indexPath.row].title
        cell.subtitle.text = self.gamesDetails[indexPath.row].subTitle
          return cell
      }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width:166, height: 250)
       }
      
}
