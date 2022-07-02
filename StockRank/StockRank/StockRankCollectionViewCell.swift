//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 맥성연 on 2022/07/02.
//

import UIKit

// setting class, collection reusable identifier
class StockRankCollectionViewCell: UICollectionViewCell {
    
    // connect UI component
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var CI: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!

    @IBOutlet weak var companyPriceLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    // UI component data update
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        CI.image = UIImage(named:stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price)) 원"
        
        // 과제
        diffLabel.textColor = stock.diff > 0 ? UIColor.systemRed : UIColor.systemBlue
        diffLabel.text = "\(stock.diff)%"
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        return numberFormatter.string(from: NSNumber(value: price))!
    }
}
