//
//  HomeDatasource.swift
//  TwitterClone
//
//  Created by ThanhVt on 1/15/20.
//  Copyright © 2020 ThanhVt. All rights reserved.
//
import UIKit
import LBTAComponents

class HomeDatasource: Datasource {
    let users: [User] = {
        let brianUser = User(name: "Text", username: "@testtest", bioText: "SOME MORE BIO TEXT", profileImage: UIImage(named: "profile_image")!)
        let rayUser = User(name: "Ray WenderLich", username: "@rwenderlich", bioText: "Ray Wenderlich is an Iphone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference.", profileImage: UIImage(named: "profile_image")!)
        
        return [brianUser, rayUser]
    }()
    // let words = ["User 1", "User 2", "User 3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
