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
        Repository(repoName: "Abc", repoOwner: "Bond_EA", repoDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc"),
        Repository(repoName: "Scalable text", repoOwner: "EgorPetrov293", repoDescription: "This cool repo helps you to get scalable tableView cells for your app, really feels fine! And by the way, there should be no gaps, I mean ALL text should be visible event this ending!")
    ]
    
    var tableViewContentsViewModel: TableViewContentsViewModel {
        get {
            return TableViewContentsViewModel(repos: repos)
        }
    }
}
