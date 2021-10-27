//
//  NewsFeedPostCollectionViewCell.swift
//  Super News
//
//  Created by Jeffrey Ip on 26/10/2021.
//

import UIKit
import YogaKit

class NewsPostCollectionViewCell: UICollectionViewCell {
    private var model:NewsPostModel?
    private var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 2
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
//        titleLabel.backgroundColor = .gray
        return titleLabel
    }()
    private var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.numberOfLines = 3
//        descriptionLabel.lineBreakMode = .byWordWrapping
        return descriptionLabel
    }()
    public var thumbnailImageView: UIImageView?

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(model: NewsPostModel){
        self.model = model
        titleLabel.text = model.title
        descriptionLabel.text = model.description
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
    }
    
    override func layoutSubviews() {
        contentView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.justifyContent = .spaceBetween
            layout.paddingVertical = 10
            layout.paddingHorizontal = 18
        }
        titleLabel.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 100%
        }
        thumbnailImageView?.configureLayout{ (layout) in
            layout.isEnabled = true
            layout.width = 100%
            layout.height = 150
        }
        descriptionLabel.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 100%
        }
        
        contentView.yoga.applyLayout(preservingOrigin: true)
    }
    
}
