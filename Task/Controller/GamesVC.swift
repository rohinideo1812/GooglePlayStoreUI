//
//  GamesVC.swift
//  Task
//
//  Created by Rohini Deo on 23/10/20.
//  Copyright © 2020 Taxgenie. All rights reserved.
//

import UIKit

class GamesVC: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
    
    //Mark:IBOutlet:
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let searchView = SearchView()
        searchView.searchTxtField.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuTableViewCell = tableView.dequeueReusableCell(withIdentifier:"MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        let addTableViewCell = tableView.dequeueReusableCell(withIdentifier:"AddTableViewCell", for: indexPath) as! AddTableViewCell
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier:"TableViewCell", for: indexPath) as! TableViewCell
        let recommendedTableViewCell = tableView.dequeueReusableCell(withIdentifier:"RecommendedTableViewCell", for: indexPath) as! RecommendedTableViewCell
        let gamesTableViewCell = tableView.dequeueReusableCell(withIdentifier:"GamesTableViewCell", for: indexPath) as! GamesTableViewCell
        if indexPath.row == 0{
            return menuTableViewCell
        }else if indexPath.row == 1{
            addTableViewCell.layoutIfNeeded()
            addTableViewCell.collectionView.reloadData()
            addTableViewCell.collectionViewHeight.constant = self.view.frame.size.height * 0.20 > 150 ? self.view.frame.size.height * 0.20 : 150
            addTableViewCell.height = self.view.frame.size.height * 0.20 > 150 ? self.view.frame.size.height * 0.20 : 150
            return addTableViewCell
        }else if indexPath.row == 2{
            tableViewCell.title.text = "Discover recomended games"
            return tableViewCell
        }else if indexPath.row == 4{
            tableViewCell.title.text = "Suggested For You"
            return tableViewCell
        }else if indexPath.row == 5 ||  indexPath.row == 6{
            return gamesTableViewCell
        }else{
            recommendedTableViewCell.layoutIfNeeded()
            recommendedTableViewCell.collectionView.reloadData()
            return recommendedTableViewCell
        }
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
