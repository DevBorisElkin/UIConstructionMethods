//
//  TableViewWithCodeViewController.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class TableViewWithCodeViewController: PreparedTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Opened TableViewWithCodeViewController")
        
        view.backgroundColor = .blue
        
        view.addSubview(tableView)
        tableView.fillSuperview()

        tableView.delegate = self
        tableView.dataSource = self

        tableView.register(CodeTableViewCell.self, forCellReuseIdentifier: CodeTableViewCell.cellIdentifier)
        
        
    }
    
    var tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
}

extension TableViewWithCodeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.repos.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: CodeTableViewCell.cellIdentifier, for: indexPath) as! CodeTableViewCell
        
        var cellViewModel = viewModel.repoCellViewModel(indexPath: indexPath)
        
        cell.setUp(viewModel: cellViewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var cellViewModel = viewModel.repoCellViewModel(indexPath: indexPath)
        return cellViewModel.cellHeight
    }
    
}
