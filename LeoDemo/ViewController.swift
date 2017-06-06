//
//  ViewController.swift
//  LeoDemo
//
//  Created by 李理 on 2017/6/5.
//  Copyright © 2017年 李理. All rights reserved.
//

import UIKit
import ReactiveCocoa
import SnapKit
import LeoCommon

class ViewController: UIViewController {
    let infoLabel:UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(self.infoLabel)
        self.infoLabel.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalTo(100)
            make.width.height.equalTo(100)
        }
        self.infoLabel.backgroundColor = .red
        self.infoLabel.attributedText = "你好".string(size: 30, hex: "#04af92")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

