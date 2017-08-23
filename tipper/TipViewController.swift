//
//  ViewController.swift
//  tipper
//
//  Created by Amy Erz on 8/18/17.
//  Copyright © 2017 Amy Erz. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var tipPercentages = [ 0.18, 0.20, 0.25 ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTip = defaults.integerForKey("default_tip_percentage")
        setTipPercentageArray(defaultTip)
    }
    
    func setTipPercentageArray(defaultTip: Int) {
        tipPercentages = [Double(defaultTip)/100, Double(defaultTip+5)/100, Double(defaultTip+10)/100]
        
        tipControl.setTitle(String(Int(tipPercentages[0]*100)) + "%", forSegmentAtIndex: 0)
        tipControl.setTitle(String(Int(tipPercentages[1]*100)) + "%", forSegmentAtIndex: 1)
        tipControl.setTitle(String(Int(tipPercentages[2]*100)) + "%", forSegmentAtIndex: 2)
        
        // select the newly default tip %
        tipControl.selectedSegmentIndex = 0
        
        calculateTip()
    }
    
    func calculateTip() {
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculatingTip() {
        calculateTip()
    }
}

