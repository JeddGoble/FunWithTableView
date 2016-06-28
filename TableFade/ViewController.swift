//
//  ViewController.swift
//  TableFade
//
//  Created by jgoble52 on 6/27/16.
//  Copyright © 2016 tangital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 0.0, y: 20.0, width: self.view.frame.size.width, height: self.view.frame.size.height - 20)
        let tableFadeView = TableFadeView(frame: frame, style: .Plain)
        self.view.addSubview(tableFadeView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

