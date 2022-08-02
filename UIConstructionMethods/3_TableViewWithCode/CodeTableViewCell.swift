//
//  CodeTableViewCell.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class CodeTableViewCell: UITableViewCell {

    static let cellIdentifier = "codeTableViewCell"
    
    var repoName: UILabel = {
        return UILabel()
    }()
    var repoOwner: UILabel = {
        return UILabel()
    }()
    var repoDescription: UILabel = {
        return UILabel()
    }()
    
    func setUp(viewModel: RepositoryCellViewModel){
        
        print("Code cell has been initialized")
        
        addSubview(repoName)
        addSubview(repoOwner)
        addSubview(repoDescription)
        
        repoName.frame = CodableTableViewConstants.repoNameFrame
        repoOwner.frame = CodableTableViewConstants.repoOwnerNameFrame
        repoDescription.frame = viewModel.repoDescriptionFrame
        
        repoName.text = viewModel.repo.repoName
        repoOwner.text = viewModel.repo.repoOwner
        repoDescription.text = viewModel.repo.repoDescription
        repoDescription.font = CellConstants.postLabelFont
        repoDescription.numberOfLines = 0
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
