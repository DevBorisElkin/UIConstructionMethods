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
    
    func setUp(repo: Repository){
        repoName.text = repo.repoName
        repoOwner.text = repo.repoOwner
        repoDescription.text = repo.repoDescription
    }

}
