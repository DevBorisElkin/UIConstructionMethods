//
//  RegularViewController.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class RegularViewController: PreparedTableViewController {

}

extension RegularViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.repos.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: RegularTableViewCell.cellIdentifier, for: indexPath) as! RegularTableViewCell
        
        var cellViewModel = viewModel.repoCellViewModel(indexPath: indexPath)
        
        cell.setUp(viewModel: cellViewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var cellViewModel = viewModel.repoCellViewModel(indexPath: indexPath)
        return cellViewModel.cellHeight
    }
    
}
