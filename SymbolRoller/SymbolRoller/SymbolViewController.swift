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
        imageView.image = UIImage(systemName: "cloud")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonClicked(_ sender: Any) {
        print("와 눌렸다")
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
