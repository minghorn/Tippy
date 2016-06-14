//
//  ViewController.swift
//  Tippy
//
//  Created by Ming Horn on 6/14/16.
//  Copyright © 2016 Ming Horn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func calcTip(sender: AnyObject) {
        //Cast as a double, then if it can't return 0 as default value
        let billVal = Double(billField.text!) ?? 0
        let tipPercentages = [0.1, 0.15, 0.2]
        let tip = billVal * tipPercentages[tipControl.selectedSegmentIndex]
        let total = billVal + tip
        
        
        //Create string with format of $ f = decimal which is tip, with two decimal places after the period
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

