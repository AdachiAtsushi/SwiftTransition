//
//  NextViewController.swift
//  SwiftTransition
//
//  Created by 安達篤史 on 2020/06/19.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    // 画面項目定義
    @IBOutlet weak var nextLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルに遷移元の値を反映
        nextLabel.text = String(count)
    }

}

