//
//  HomeDatasourceController+navbar.swift
//  TwitterClone
//
//  Created by ThanhVt on 1/16/20.
//  Copyright © 2020 ThanhVt. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
    func setupNavigationBarItems() {
        let titleImageView = UIImageView(image: UIImage(named: "title_icon"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        let followButton = UIButton(type: .system)
        followButton.setImage(UIImage(named: "follow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(UIImage(named: "compose")?.withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searchButton), UIBarButtonItem(customView: composeButton)]
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
}

final class Dog {
    
}

class Cat: Dog {
    
}
