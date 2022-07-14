//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by TAEJANIM on 2022/07/14.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
}
