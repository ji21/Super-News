//
//  NewsFeedPostCollectionViewCell.swift
//  Super News
//
//  Created by Jeffrey Ip on 26/10/2021.
//

import UIKit

class NewsPostCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
