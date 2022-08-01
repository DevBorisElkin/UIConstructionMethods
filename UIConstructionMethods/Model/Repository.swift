//
//  Repository.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import Foundation

class Repository{
    var repoName: String
    var repoOwner: String
    var repoDescription: String
    
    init(repoName: String, repoOwner: String, repoDescription: String){
        self.repoName = repoName
        self.repoOwner = repoOwner
        self.repoDescription = repoDescription
    }
}
