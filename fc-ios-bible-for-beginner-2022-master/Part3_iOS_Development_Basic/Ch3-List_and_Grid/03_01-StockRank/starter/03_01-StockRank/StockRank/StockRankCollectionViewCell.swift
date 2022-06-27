//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by TAEJANIM on 2022/06/27.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    // UIComponent 연결하자
    // UIComponent 에 데이터를 업데이트 하는 코드를 넣자
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var companyIconImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyPriceLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = "\(stock.name)"
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price))원"
        
        // if문 사용
        // let color: UIColor
        // if stock.diff > 0 {
        //        color = UIColor.systemRed
        //    } else {
        //        color = UIColor.systemBlue
        //    }
        // 3항 연산자 사용 - diffLabel.textColor = 조건 ? true 일때 : false 일때
        diffLabel.textColor = stock.diff > 0 ? UIColor.systemRed : UIColor.systemBlue
        diffLabel.text = "\(stock.diff)"
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        // result가 nil인 경우에는 빈 문자열을 넘겨줘
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        return result
    }
    
}
