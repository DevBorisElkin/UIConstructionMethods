//
//  CodeTableViewCell.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class CodeTableViewCell: UITableViewCell {

    static let cellIdentifier = "codeTableViewCell"
    
    func setUp(viewModel: RepositoryCellViewModel){
        
        print("Code cell has been initialized")
        
        //repoName.text = viewModel.repo.repoName
        //repoOwner.text = viewModel.repo.repoOwner
        //repoDescription.text = viewModel.repo.repoDescription
        //
        //repoDescription.frame = viewModel.repoDescriptionFrame
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
