//
//  ViewController.swift
//  作业十三-1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 guoxiaohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        
        let btn = UIButton(frame: CGRect(x: 20, y: 50, width: 100, height: 44))
        btn.setTitle("开始运算", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.setTitleColor(UIColor.brown, for: .highlighted)
        btn.layer.borderWidth = 1
        btn.addTarget(self, action: #selector(startCalculate), for: .touchUpInside)
        self.view.addSubview(btn)
        
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 44))
        label.text = "1"
        label.textColor = UIColor.black
        self.view.addSubview(label)
    }
    
    @objc func startCalculate() {
        DispatchQueue.global().async {
            var number = 0
            for num in 1...9999999 {
                number += num
                DispatchQueue.main.async {
                    self.label.text = "\(number)"
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

