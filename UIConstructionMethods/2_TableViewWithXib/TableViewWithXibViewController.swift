//
//  TableViewWithXibViewController.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class TableViewWithXibViewController: PreparedTableViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        
        tableView.register(UINib(nibName: "XibTableViewCell", bundle: nil), forCellReuseIdentifier: XibTableViewCell.cellIdentifier)
    }
}

extension TableViewWithXibViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.repos.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: XibTableViewCell.cellIdentifier, for: indexPath) as! XibTableViewCell
        
        var cellViewModel = viewModel.repoCellViewModel(indexPath: indexPath)
        
        cell.setUp(viewModel: cellViewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var cellViewModel = viewModel.repoCellViewModel(indexPath: indexPath)
        return cellViewModel.cellHeight
    }
    
}
