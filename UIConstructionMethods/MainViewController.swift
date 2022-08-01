//
//  ViewController.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel = MainViewModel()
    
    
    @IBAction func openSimpleTableView(_ sender: Any) {
        performSegue(withIdentifier: viewModel.segueSimpleTableViewId, sender: nil)
    }
    @IBAction func openTableViewWithXib(_ sender: Any) {
        performSegue(withIdentifier: viewModel.segueXibTableViewId, sender: nil)
    }
    @IBAction func openTableViewWithCode(_ sender: Any) {
        performSegue(withIdentifier: viewModel.segueCodeTableViewId, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if viewModel.isTableViewVC(id: segue.identifier){
            print("Moving to designated VC")
            var vc = segue.destination as! PreparedTableViewController
            vc.setUp(viewModel: viewModel.tableViewContentsViewModel)
        }
        
        // for later to remove
        switch segue.identifier {
        case viewModel.segueSimpleTableViewId:
            print("Moving to '\(viewModel.segueSimpleTableViewId)'")
            var vc = segue.destination as! RegularViewController
            //vc.setUp(viewModel: viewModel.tableViewContentsViewModel)
        case viewModel.segueXibTableViewId:
            print("Moving to '\(viewModel.segueXibTableViewId)'")
            var vc = segue.destination as! TableViewWithXibViewController
            //vc.setUp(viewModel: viewModel.tableViewContentsViewModel)
        case viewModel.segueCodeTableViewId:
            print("Moving to '\(viewModel.segueCodeTableViewId)'")
            var vc = segue.destination as! TableViewWithCodeViewController
            //vc.setUp(viewModel: viewModel.tableViewContentsViewModel)
        default:
            print("Can't apply seque because identifier is incorrect")
        }
    }
}

