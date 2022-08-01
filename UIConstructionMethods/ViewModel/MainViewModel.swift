//
//  MainViewModel.swift
//  UIConstructionMethods
//
//  Created by test on 01.08.2022.
//

import Foundation

class MainViewModel {
    
    let segueSimpleTableViewId = "regularTableView"
    let segueXibTableViewId = "tableViewWithXib"
    let segueCodeTableViewId = "tableViewWithCode"
    
    func isTableViewVC(id: String?) -> Bool {
        id == segueSimpleTableViewId || id == segueXibTableViewId || id == segueCodeTableViewId
    }
    
    
    var repos: [Repository] = [
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Really cool repository"),
        Repository(repoName: "Lorem Ipsum", repoOwner: "Bond_EA", repoDescription: "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Some lorem ipsum text bla bla bla.."),
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Aldus PageMaker including versions of Lorem"),
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
    ]
    
    var tableViewContentsViewModel: TableViewContentsViewModel {
        get {
            return TableViewContentsViewModel(repos: repos)
        }
    }
}
