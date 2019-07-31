//
//  ResultViewController.swift
//  DiscountCalculator
//
//  Created by 寺島 洋平 on 2019/07/31.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 最初の画面で入力された金額
    var price: Int = 0
    
    // 割引パーセンテージ(10%)
    let percentValue: Float = 0.1
    
    // 計算結果を表示するフィールド
    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 割引額を算出する
        let waribikiPrice = Float(price) * percentValue
        // 割引後の価格を算出する
        let percentOffPrice = price - Int(waribikiPrice)
        // 結果を表示する
        resultField.text = "\(percentOffPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
