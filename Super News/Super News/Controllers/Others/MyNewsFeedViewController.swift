//
//  MyNewsFeedViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 25/10/2021.
//

import UIKit
import SDWebImage

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
    private var NewsPostModels : [NewsPostModel] = [NewsPostModel]()
    private let NewsPostCellId : String = "NewsPostCell"
    private let refresher : UIRefreshControl = {
        let refresher = UIRefreshControl()
        refresher.tintColor = .gray
        return refresher
    }()
    let n = 10
    
    init(parentController: UINavigationController){
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: parentController.view.frame.width, height: parentController.view.frame.width*0.75)
//        flowLayout.itemSize.width = parentController.view.frame.width
        flowLayout.minimumLineSpacing = 0.0
        super.init(collectionViewLayout: flowLayout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsPostCellId, for: indexPath as IndexPath) as! NewsPostCollectionViewCell
        let model = NewsPostModels[indexPath.row]
//        cell.configure(model: model)
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor.lightGray.cgColor
        print(cell.thumbnailImageView)
        cell.thumbnailImageView = UIImageView()
        cell.configure(model: model)
        cell.thumbnailImageView?.sd_setImage(with: URL(string: model.thumbnailURL), placeholderImage: UIImage(named: "photo"), options: []) { (image, err, cache, url) in
            cell.thumbnailImageView?.image = image
            print(cell.thumbnailImageView)
            cell.contentView.addSubview(cell.thumbnailImageView!)
            cell.layoutSubviews()
        }
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = NewsPostModels[indexPath.row]
        let NewsArticleVC = NewsArticleViewController(model: model)
        navigationController?.pushViewController(NewsArticleVC, animated: true)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return n
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        title = "Newspaper"
        for _ in 0...n{
            NewsPostModels.append(NewsPostModel(thumbnailImageView: nil))
        }
        navigationController?.navigationBar.tintColor = .black
        navigationItem.rightBarButtonItems = [UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(search)), UIBarButtonItem(image: UIImage(systemName: "cloud.bolt.rain"), style: .plain, target: self, action: #selector(search))]
        collectionView.register(NewsPostCollectionViewCell.self, forCellWithReuseIdentifier: NewsPostCellId)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.alwaysBounceVertical = true
        refresher.addTarget(self, action: #selector(loadData), for: .valueChanged)
        collectionView.refreshControl = refresher
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func search(){
        
    }
    
    

    @objc private func loadData(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
           // Excecute after 3 seconds
            self.collectionView.refreshControl?.endRefreshing()
            print("should end")
//            self.refresher.endRefreshing()
        }
//        collectionView.refreshControl?.endRefreshing()
    }

}
