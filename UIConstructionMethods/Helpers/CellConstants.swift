//
//  CellConstants.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import Foundation
import UIKit

struct CellConstants {
    
    static let borderYHeight: CGFloat = 5 // top/bottom purple borders height
    static let itemsYOffset: CGFloat = 6 // offset from top/bottom border to an element
    
    static let postLabelFont = UIFont.systemFont(ofSize: 15) // main font data
    
    static let extraTextSpace: CGFloat = 3 // 3
    
    // function to get screen width ?? TODO rework
    static func getScreenWidth() -> CGFloat {
        //return min(UIScreen.main.bounds.width, UIScreen.main.bounds.height)
        return UIScreen.main.bounds.width
    }
    // basic insets data for description text, like repo description, offsets from edges by X, bottom offset is not used
    static let descriptionTextInsets = UIEdgeInsets(top: 98, left: 16, bottom: 777, right: 16)
}
