//
//  SymbolViewController.swift
//  SymbolRoller
//
//  Created by 맥성연 on 2022/07/02.
//

import UIKit

class SymbolViewController: UIViewController { // 페이지를 나타내는 하나의 단위
    
    let symbols : [String] = ["sum.min", "moon","cloud","wind","snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    // control + drag
    // Outlet : Layout에 있는 Interface와 연결하겠다
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO :
        // - symbols에서 하나를 임의로 추출
        // - 이미지와 텍스트를 설정
        
        // 임의로 추출
        let symbol = symbols.randomElement()!
        // return type : string
        
        // 이미지 설정
        imageView.image = UIImage(systemName: symbol)
        
        // 텍스트 설정
        label.text = symbol
        
        
        
        // Do any additional setup after loading the view.
    }
    
    // life cycle : viewdidload - viewwillappear - view didappear
    

    @IBAction func buttonClicked(_ sender: Any) {
        print("와 눌렸다")
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    // Action
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
