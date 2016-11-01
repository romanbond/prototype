//
//  ViewController.swift
//  HelloooooWorld
//
//  Created by P18 Enviroment on 11/1/16.
//  Copyright © 2016 P18 Enviroment. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController {
    @IBOutlet var background: UIImageView!
    @IBOutlet var titleimage: UIImageView!
    @IBOutlet var welcomebtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func welcomepress(_ sender: Any) {
        background.isHidden = false
        titleimage.isHidden = false
        welcomebtn.isHidden = true
    }


}

