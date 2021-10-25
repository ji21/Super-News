//
//  ExploreViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 24/10/2021.
//

import UIKit

class NewspaperViewController: UIViewController {
    
    var newsAPIAPIKey : String? = ProcessInfo.processInfo.environment["newsapi_api_key"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Newspaper"
        navigationController?.navigationBar.barTintColor = UIColor.red
        view.backgroundColor = UIColor.white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(search))
    }
    
    @objc func search() {
        // Function body goes here
    }


}
