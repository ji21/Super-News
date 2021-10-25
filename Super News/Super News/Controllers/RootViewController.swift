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
        
        let NewspaperVC = NewspaperViewController()
        let NewspaperNavVC = UINavigationController(rootViewController: NewspaperVC)
        NewspaperNavVC.tabBarItem = UITabBarItem(title: "Newspaper", image: UIImage(systemName: "newspaper"), tag: 1)
        NewspaperNavVC.setNavigationBarHidden(false, animated: true)
        print(NewspaperNavVC.navigationBar.frame)
        
        let HomeVC = HomeViewController()
        let HomeNavVC = UINavigationController(rootViewController: HomeVC)
        HomeNavVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        
        let ProfileVC = ProfileViewController()
        let ProfileNavVC = UINavigationController(rootViewController: ProfileVC)
        ProfileNavVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        
        
        self.setViewControllers([NewspaperNavVC, HomeNavVC, ProfileNavVC], animated: false)
        self.selectedIndex = 0
        self.tabBar.layer.borderWidth = 0.3
        self.tabBar.layer.borderColor = UIColor.gray.cgColor
        self.view.backgroundColor = UIColor.white
        self.tabBar.tintColor = UIColor.red
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.unselectedItemTintColor = UIColor.gray
    }
}
