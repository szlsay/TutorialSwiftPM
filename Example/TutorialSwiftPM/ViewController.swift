//
//  ViewController.swift
//  TutorialSwiftPM
//
//  Created by stszl on 05/14/2020.
//  Copyright (c) 2020 stszl. All rights reserved.
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

