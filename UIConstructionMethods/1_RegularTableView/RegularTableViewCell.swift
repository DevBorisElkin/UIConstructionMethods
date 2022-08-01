//
//  RegularTableViewCell.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class RegularTableViewCell: UITableViewCell {

    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var repoOwner: UILabel!
    @IBOutlet weak var repoDescription: UILabel!
    
    func setUp(viewModel: RepositoryCellViewModel){
        repoName.text = viewModel.repo.repoName
        repoOwner.text = viewModel.repo.repoOwner
        repoDescription.text = viewModel.repo.repoDescription
        
        repoDescription.frame = viewModel.repoDescriptionFrame
    }
}
