//
//  SecondViewController.swift
//  作业十一-1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 guoxiaohan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var name = ""
    var no = ""
    var delegate: StudentProtocol?
    @IBOutlet weak var tfNo: UITextField!
    
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.orange

        // Do any additional setup after loading the view.
        tfNo.text = no
        tfName.text = name
    }
    
    @IBAction func back(_ sender: Any) {
        no = tfNo.text!
        name = tfName.text!
        delegate?.change(name: name, no: no)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
