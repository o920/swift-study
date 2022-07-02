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
        companyPriceLabel.text = "\(stock.price) 원"
        diffLabel.text = "\(stock.diff)%"
    }
}
