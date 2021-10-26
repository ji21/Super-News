//
//  RootViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 24/10/2021.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        let NewspaperVC = NewspaperViewController()
        NewspaperVC.tabBarItem = UITabBarItem(title: "Newspaper", image: UIImage(systemName: "newspaper"), tag: 1)

        let HeadlinesVC = HeadlinesViewController()
        HeadlinesVC.tabBarItem = UITabBarItem(title: "Headlines", image: UIImage(systemName: "flame"), tag: 1)

        let ProfileVC = ProfileViewController()
        ProfileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)


        self.setViewControllers([HeadlinesVC, NewspaperVC, ProfileVC], animated: false)
        self.selectedIndex = 1
        self.tabBar.layer.borderWidth = 0.3
        self.tabBar.layer.borderColor = UIColor.gray.cgColor
        self.tabBar.tintColor = UIColor.red
        self.tabBar.unselectedItemTintColor = UIColor.gray
    }
}
