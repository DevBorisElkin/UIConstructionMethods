//
//  XibTableViewCell.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import UIKit

class XibTableViewCell: UITableViewCell {

    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var repoOwner: UILabel!
    @IBOutlet weak var repoDescription: UILabel!
    
    static let cellIdentifier = "repoXibCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // here you add some decorational/configurational code
    }
    
    // Just for a reference: USE this for 'reuse' of cells when rotation of device changes
    // or when already used cell is being used again (since that's how reusable cells work)
    
//    override func prepareForReuse() {
//        iconImageView.set(imageURL: nil)
//        postImageView.set(imageURL: nil)
//        //super.prepareForReuse()
//    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(viewModel: RepositoryCellViewModel){
        repoName.text = viewModel.repo.repoName
        repoOwner.text = viewModel.repo.repoOwner
        repoDescription.text = viewModel.repo.repoDescription
        
        repoDescription.frame = viewModel.repoDescriptionFrame
    }
    
}
