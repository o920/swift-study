//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 맥성연 on 2022/07/02.
//


// setting class, storyboard ID @main
import UIKit

class StockRankViewController: UIViewController {
    
    let stockList : [StockModel] = StockModel.list
    
    // connect collection view interface
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // Data, Presentation, Layout
    // Data : what data to use -> stockList
    // Presentation : how to present the cell
    // Layout : how to position the cell
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self    // presentation
        collectionView.delegate = self      // layout
        // protocol
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // reuse cell for len of stockList
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else { return UICollectionViewCell()
        }
        // configure : overridden method-> casting
        // ? : preparing fail of casting
        // guard <true condition> else { return }
        
        // present one cell
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // width == collectionView - single column
        // 80
        return CGSize(width: collectionView.bounds.width, height : 80)
    }
}
