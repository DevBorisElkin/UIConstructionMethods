//
//  TableViewContentsViewModel.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import Foundation
import UIKit

class TableViewContentsViewModel {
    var repos: [Repository]
    
    init(repos: [Repository]){
        self.repos = repos
    }
    
    func repoCellViewModel(indexPath: IndexPath) -> RepositoryCellViewModel {
        
        var selectedRepo = repos[indexPath.row]
        
        // MARK: Calculate text Rect
        var repoDescriptionFrame = CGRect(
            origin: CGPoint(
                x: CellConstants.descriptionTextInsets.left,
                y: CellConstants.descriptionTextInsets.top),
            size: CGSize.zero)
        
        if !selectedRepo.repoDescription.isEmpty{
            let width = CellConstants.repoDescriptionTextWidth
            let height = selectedRepo.repoDescription.height(width: width, font: CellConstants.postLabelFont)
            
            repoDescriptionFrame.size = CGSize(width: width, height: height)
        }
        print("Calculated text height for item \(indexPath.row): \(repoDescriptionFrame.size.height)")
        
        // MARK: Calculate cell height
        var cellTotalHeight: CGFloat = CellConstants.descriptionTextInsets.top + repoDescriptionFrame.height + CellConstants.itemsYOffset + CellConstants.borderYHeight
        
        return RepositoryCellViewModel(cellHeight: cellTotalHeight, repoDescriptionFrame: repoDescriptionFrame, repo: selectedRepo)
    }
}
