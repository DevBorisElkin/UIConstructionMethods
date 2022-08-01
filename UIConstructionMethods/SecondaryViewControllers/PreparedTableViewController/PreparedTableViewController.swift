//
//  PreparedTableViewController.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class PreparedTableViewController: UIViewController {

    var viewModel: TableViewContentsViewModel!
    
    func setUp(viewModel: TableViewContentsViewModel){
        print("vc has been initialized!")
        self.viewModel = viewModel
    }
}
