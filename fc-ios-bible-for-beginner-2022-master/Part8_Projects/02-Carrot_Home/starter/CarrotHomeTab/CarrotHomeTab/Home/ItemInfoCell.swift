//
//  ItemInfoCell.swift
//  CarrotHomeTab
//
//  Created by TAEJANIM on 2022/08/16.
//

import UIKit

class ItemInfoCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var numberOfChatLabel: UILabel!
    @IBOutlet weak var numberOfLikeLabel: UILabel!
    
    func configure(item: ItemInfo) {
        titleLabel.text = item.title
        descriptionLabel.text = item.location
        priceLabel.text = "\(item.price)원"
        
        numberOfChatLabel.text = "\(item.numOfChats)"
        numberOfLikeLabel.text = "\(item.numOfLikes)"
    }
}
