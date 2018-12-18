//
//  ViewController.swift
//  作业六-3
//
//  Created by guoxiaohan on 2018/10/24.
//  Copyright © 2018年 2016110307. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let red = UIView()
        red.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        let green = UIView()
        green.backgroundColor = #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)
        let blue = UIView()
        blue.backgroundColor = #colorLiteral(red: 1, green: 0.8578568101, blue: 0.9005210996, alpha: 1)
        
        let stack = UIStackView(arrangedSubviews: [red,green,blue])
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 20
        
        
        view.addSubview(stack)
        
    stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        stack.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        
    }



}

