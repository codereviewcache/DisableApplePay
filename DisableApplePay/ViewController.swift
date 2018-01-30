//
//  ViewController.swift
//  DisableApplePay
//
//  Created by Ashar, Snehanshu on 1/30/18.
//  Copyright © 2018 Ashar, Snehanshu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        PassKitHelper.suppressApplePay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

