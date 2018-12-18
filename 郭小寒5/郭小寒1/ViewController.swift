//
//  ViewController.swift
//  郭小寒1
//
//  Created by student on 2018/11/10.
//  Copyright © 2018年 XTX. All rights reserved.
//
import UIKit
class ViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        let label = UILabel(frame: CGRect(x: 200, y: 200, width: 100
            , height: 100))
        label.text = "helloworld"
        label.backgroundColor = UIColor.orange
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 20))
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title="first"
        print("viewdidload")
        
    }
    @IBAction func btnClicked(){
        if let label = view.subviews.first as? UILabel{
            label.text = "I am Clicked!"
        }
        self.navigationController?.pushViewController(SecondViewController(),animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
}
