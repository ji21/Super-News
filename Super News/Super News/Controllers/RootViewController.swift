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
        let HomeVC = HomeViewController(nibName: nil, bundle: nil)
        let ProfileVC = ProfileViewController(nibName: nil, bundle: nil)
        let DiscoverVC = DiscoverViewController(nibName: nil, bundle: nil)
        HomeVC.title = "Home"
        HomeVC.navigationBar.barTintColor = UIColor.white
        DiscoverVC.title = "Discover"
        ProfileVC.title = "Profile"
        self.setViewControllers([DiscoverVC, HomeVC, ProfileVC], animated: false)
        self.selectedIndex = 1
        self.tabBar.layer.borderWidth = 0.2
        self.tabBar.layer.borderColor = UIColor.gray.cgColor
        self.tabBar.tintColor = UIColor.black
        print("okoko")

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
