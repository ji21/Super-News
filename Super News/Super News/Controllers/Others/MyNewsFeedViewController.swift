//
//  MyNewsFeedViewController.swift
//  Super News
//
//  Created by Jeffrey Ip on 25/10/2021.
//

import UIKit
import SDWebImage

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
        flowLayout.itemSize = CGSize(width: parentController.view.frame.width, height: parentController.view.frame.width*0.9)
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
        cell.configure(model: model)
//        cell.thumbnailImageView.sd_setImage(with: URL(string: model.thumbnailURL), placeholderImage: UIImage(named: "photo"), options: []) { (image, err, cache, url) in
////            if (collectionView.visibleCells.contains(cell)) {
//                cell.layoutSubviews()
////            }
//        }
        cell.thumbnailImageView.sd_setImage(with: URL(string: model.thumbnailURL), completed: nil)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsPostCellId, for: indexPath as IndexPath) as! NewsPostCollectionViewCell
        cell.sd_cancelCurrentImageLoad()
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
