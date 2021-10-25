//
//  NewsFeedViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 24/10/2021.
//

import UIKit

class HeadlinesFeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Headlines"
//        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(search))
        let b = UIButton()
        b.setTitle("click me", for: .normal)
        b.frame = CGRect(x: 50, y:150, width: 100, height: 100)
        b.backgroundColor = .systemBlue
        b.addTarget(self, action: #selector(push), for: .touchUpInside)
        view.addSubview(b)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func push() {
        self.navigationController?.pushViewController(NewsArticleViewController(), animated: true)
    }
    
    @objc func search() {
        // Function body goes here
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
