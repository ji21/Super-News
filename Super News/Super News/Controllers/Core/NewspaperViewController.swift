//
//  ExploreViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 24/10/2021.
//

import UIKit

class NewspaperViewController: UINavigationController {
    
    var newsAPIAPIKey : String? = ProcessInfo.processInfo.environment["newsapi_api_key"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let NewsFeedVC = MyNewsFeedViewController(parentController: self)
        self.pushViewController(NewsFeedVC, animated: true)
        print(viewControllers)
    }
    
    @objc func search() {
        // Function body goes here
    }


}
