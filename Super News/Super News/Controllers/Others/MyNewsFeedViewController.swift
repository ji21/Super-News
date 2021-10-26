//
//  MyNewsFeedViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 25/10/2021.
//

import UIKit

//class MyNewsFeedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = newsCollectionView!.dequeueReusableCell(withReuseIdentifier: "NewsPostCell", for: indexPath as IndexPath) as! NewsPostCollectionViewCell
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    private var newsCollectionView: UICollectionView?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = UIColor.white
//        navigationController?.navigationBar.prefersLargeTitles = true
//        title = "Newspaper"
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(search))
//        addCollectionView()
//
//    }
//
//    func addCollectionView() {
//        let flowLayout = UICollectionViewFlowLayout()
//        flowLayout.scrollDirection = .vertical
//        flowLayout.itemSize = CGSize(width: view.frame.width, height: 100)
//        newsCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: flowLayout)
//        newsCollectionView?.register(NewsPostCollectionViewCell.self, forCellWithReuseIdentifier: "NewsPostCell")
//        newsCollectionView?.delegate = self
//        newsCollectionView?.dataSource = self
//        newsCollectionView?.showsVerticalScrollIndicator = false
//        view.addSubview(newsCollectionView!)
//    }
//
//    @objc func search(){
//
//    }
//
//}
class MyNewsFeedViewController: UICollectionViewController {
    private let NewsPostCellId : String = "NewsPostCell"
    
    init(parentController: UINavigationController){
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: parentController.view.frame.width, height: 100)
        super.init(collectionViewLayout: flowLayout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsPostCellId, for: indexPath as IndexPath) as! NewsPostCollectionViewCell
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Newspaper"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(search))
        collectionView.register(NewsPostCollectionViewCell.self, forCellWithReuseIdentifier: NewsPostCellId)
        collectionView.showsVerticalScrollIndicator = false
        
    }
    
    @objc func search(){
        
    }

}
