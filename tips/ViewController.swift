//
//  ViewController.swift
//  tips
//
//  Created by Varun Goel on 12/2/15.
//  Copyright © 2015 Varun Goel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //segmented index from tip percentage option
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    //field for check amount
    @IBOutlet weak var billField: UITextField!
    
    //label for tip
    @IBOutlet weak var tipLabel: UILabel!
    
    //total amount
    @IBOutlet weak var totalLabel: UILabel!
   
    //dynamically changes the content according to the editing made in the check amount
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15,0.20,0.25]
        
        var tipPercentage = 0.0
        
        if(tipControl.selectedSegmentIndex >= 0){
         tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        }
        else{
            tipPercentage = 0.0
        }
        
        
       let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage //hard coded for now
         let total = tip + billAmount
       
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
        
        
    }
   
    //when screen is tapped
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)// ends editing
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        tipControl.selectedSegmentIndex = -1 //sets segment index == 0 on load
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

