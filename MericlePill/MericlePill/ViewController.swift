//
//  ViewController.swift
//  MericlePill
//
//  Created by P18 Enviroment on 11/1/16.
//  Copyright © 2016 P18 Enviroment. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var statPicker: UIPickerView!
    
    @IBOutlet var statePickerBtn: UIButton!
    
    let states = ["DeShawn", "Jamal","Darius","Xavier","Trevon","floot"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        statPicker.dataSource = self
        statPicker.delegate = self
        
//        self.view.backgroundColor = UIColor.purple
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPress(_ sender: Any) {
        statPicker.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statPicker.isHidden = true
    }
    
}

