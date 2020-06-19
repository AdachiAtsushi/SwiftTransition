//
//  ViewController.swift
//  SwiftTransition
//
//  Created by 安達篤史 on 2020/06/19.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 画面項目の初期化
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //　プラスボタン押下時の挙動
    @IBAction func plus(_ sender: Any) {
        count += 1
        
        // ラベルにカウンタ変数の値を反映
        label.text = String(count)
        
        // カウンタ変数が10になった場合
        if count == 10 {
            // モーダルで画面遷移する方法
            // 画面遷移する
            // performSegue(withIdentifier: "next", sender: nil)
            
            // ナビゲーションを用いて画面遷移する方法
            let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
            
            nextVC.count = count
            
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    // モーダルで画面遷移する際に遷移元画面の値を連携する方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先画面の情報取得
        let nextVC = segue.destination as! NextViewController
        
        // 遷移先画面にカウンタ変数を連携
        nextVC.count = count
        
    }
    
}

