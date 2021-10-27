//
//  NewsViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 24/10/2021.
//

import UIKit

class NewsArticleViewController: UIViewController {
    
    private var model : NewsPostModel
    
    init(model : NewsPostModel) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("coder not initialized")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = model.title
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false
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
