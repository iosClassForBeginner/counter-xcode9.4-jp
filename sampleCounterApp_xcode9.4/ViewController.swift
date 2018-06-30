//
//  ViewController.swift
//  sampleCounterApp_xcode9.4
//
//  Created by Muneharu Onoue on 2018/06/30.
//  Copyright © 2018年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(_ sender: UIButton) {
        let iNum: Int = Int(num.text!)!
        let iNumPlus: Int = iNum + 1
        num.text = "\(iNumPlus)"
    }
    
    @IBAction func minus(_ sender: UIButton) {
        let iNum: Int = Int(num.text!)!
        let iNumMinus: Int = iNum - 1
        num.text = "\(iNumMinus)"
    }
}

