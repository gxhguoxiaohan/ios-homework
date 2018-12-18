//
//  ViewController.swift
//  作业九Alert
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 郭小寒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "please choose color", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "RED", style: .default, handler: {(action) in self.view.backgroundColor = UIColor.red}))
        alert.addAction(UIAlertAction(title: "YELLOW", style: .default, handler: {(action) in self.view.backgroundColor = UIColor.yellow}))
        alert.addAction(UIAlertAction(title: "ORANGE", style: .destructive, handler: {(action) in self.view.backgroundColor = UIColor.orange}))
        alert.addAction(UIAlertAction(title: "GREEN", style: .cancel, handler: {(action) in self.view.backgroundColor = UIColor.green}))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "login message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: {(action) in
            //var username = ""
            //var password = ""
            guard let username = alert.textFields?.first?.text, let password =
                alert.textFields?.last?.text else {
                    return
            }
            print("username=\(username) passwor=\(password)")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(action) in }))
        alert.addTextField { (TextField) in TextField.placeholder = "your user name?" }
        alert.addTextField { (TextField) in TextField.placeholder = "your password?"
            TextField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
    }
}

