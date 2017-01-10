//
//  ViewController.swift
//  CarthageDemo
//
//  Created by xuech on 2017/1/10.
//  Copyright © 2017年 obizsoft. All rights reserved.
//

import UIKit
import SwiftyJSON
import SVProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SVProgressHUD.show(withStatus: "Loading...")
        
        SVProgressHUD.dismiss(withDelay: 2.5) {
            print("dismiss")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

