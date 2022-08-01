//
//  CellConstants.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import Foundation
import UIKit

struct CellConstants {
    
    static let borderYHeight: CGFloat = 5
    static let itemsYOffset: CGFloat = 6
    //static let generalItemHeight: CGFloat = 31
    static let descriptionTopPosition: CGFloat = 98
    
    static let postLabelFont = UIFont.systemFont(ofSize: 15)
    
    // offset by 16 from left and right for text
    static let descriptionXOffset: CGFloat = 16
    
    static func getScreenWidth() -> CGFloat {
        //return min(UIScreen.main.bounds.width, UIScreen.main.bounds.height)
        return UIScreen.main.bounds.width
    }
    
    // final version for description text
    
    static let descriptionTextInsets = UIEdgeInsets(top: 98, left: 16, bottom: 777, right: 16)
}
