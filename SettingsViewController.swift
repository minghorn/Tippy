//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Ming Horn on 6/14/16.
//  Copyright © 2016 Ming Horn. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultPercentageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func changeDefault(sender: AnyObject) {
        var percent = Double(defaultPercentageField.text!) ?? 0
        percent = percent / 100
        let defaultPercent = NSUserDefaults.standardUserDefaults()
        defaultPercent.setDouble(percent, forKey: "default_tip_percentage")
    }
//    @IBAction func defaultIsSet(sender: AnyObject) {
//        let defaultPercent = NSUserDefaults.standardUserDefaults()
//        let tip = defaultPercent.doubleForKey("default_tip_percentage")
//        if(tip > 0) {
//            defaultPercentageField.text = String(tip)
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
