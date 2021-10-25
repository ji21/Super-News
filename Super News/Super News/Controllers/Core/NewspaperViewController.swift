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
        let NewsFeedVC = MyNewsFeedViewController()
        self.pushViewController(NewsFeedVC, animated: true)
        print(viewControllers)
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        var navbarHeight: CGFloat {
//             return (view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0.0) +
//                 (navigationBar.frame.height)
//         }
//        let NewsFeedVC = NewsFeedViewController()
//        NewsFeedVC.view.frame = CGRect(x:0, y:navbarHeight+1, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//        view.addSubview(NewsFeedVC.view)
    }
    
    @objc func search() {
        // Function body goes here
    }


}
