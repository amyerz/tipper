//
//  SettingsViewController.swift
//  tipper
//
//  Created by Amy Erz on 8/20/17.
//  Copyright © 2017 Amy Erz. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipText: UILabel!
    @IBOutlet weak var defaultTipSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // load default tip value from NSUserDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTiptValue = defaults.integerForKey("default_tip_percentage")
        
        // update slider value and label value
        if ( defaultTiptValue >= 10 ){
            defaultTipText.text = (String(defaultTiptValue) +  "%")
            defaultTipSlider.value = Float(defaultTiptValue)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipPercentageChange(sender: AnyObject) {
        let tipSliderValue = Int(defaultTipSlider.value)
        defaultTipText.text = (String(tipSliderValue) +  "%")
        
        //set default tip value in NSUserDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipSliderValue, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
