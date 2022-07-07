//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by TAEJANIM on 2022/07/06.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    // 재사용을 준비하는 함수
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil // 이미지 초기화
    }
    
    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
