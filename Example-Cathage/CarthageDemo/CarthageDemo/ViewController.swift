//
//  ViewController.swift
//  CarthageDemo
//
//  Created by 沈兆良 on 2020/5/14.
//  Copyright © 2020 沈兆良. All rights reserved.
//

import UIKit
import TutorialSwiftPM
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let stView = STView()
        stView.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(stView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

