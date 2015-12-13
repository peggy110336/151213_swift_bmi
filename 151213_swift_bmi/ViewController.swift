//
//  ViewController.swift
//  151213_swift_bmi
//
//  Created by LIPeggy on 2015/12/13.
//  Copyright © 2015年 LIPeggy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_height: UITextField!
    
    @IBOutlet weak var tf_weight: UITextField!
    
    @IBOutlet weak var label_view: UILabel!
    
    @IBAction func btn_calculate(sender: UIButton) {
        let height: Double? = Double(tf_height.text!)
        if height == nil {
            label_view.text = "enter height is wrong!"
            return
        }
        
        let weight: Double? = Double(tf_weight.text!)
        if weight == nil {
            label_view.text = "enter weight is wrong!"
            return
        }
        
        let bmi: Double = weight! / ((height!/100)*(height!/100))
        label_view.text = "Your bmi is \(bmi)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

