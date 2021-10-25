//
//  ViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 24/10/2021.
//

import UIKit

class HeadlinesViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor.red
        let MyNewsFeedVC = HeadlinesFeedViewController()
        self.pushViewController(MyNewsFeedVC, animated: true)
    }
    
    @objc func search(){
        
    }
}

