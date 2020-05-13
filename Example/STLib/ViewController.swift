//
//  ViewController.swift
//  STLib
//
//  Created by stszl on 05/13/2020.
//  Copyright (c) 2020 stszl. All rights reserved.
//

import UIKit
import STLib
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stView = STView()
        stView.frame = CGRect.init(x: 0, y: 0, width: 10, height: 10)
        view.addSubview(stView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

