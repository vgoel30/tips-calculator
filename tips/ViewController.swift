//
//  ViewController.swift
//  tips
//
//  Created by Varun Goel on 12/2/15.
//  Copyright © 2015 Varun Goel. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, UIPickerViewDelegate {
   
    
    //holds the resultant stuff
    @IBOutlet weak var resultView: UIView!

    //segmented index from tip percentage option
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    //field for check amount
    @IBOutlet weak var billField: UITextField!
    
    //label for tip
    @IBOutlet weak var tipLabel: UILabel!
    
    //total amount
    @IBOutlet weak var totalLabel: UILabel!
   
    //label for number of people
    @IBOutlet weak var peopleLabel: UILabel!
    
    //outlet for split label
    @IBOutlet weak var splitLable: UILabel!
   
    //outlet for stepper
    @IBOutlet weak var stepper: UIStepper!
    
    
    //outlet for the label that will display the current percentage
    @IBOutlet weak var percentageLabel: UILabel!
    
    //outlet for stepper for tip value
    @IBOutlet weak var tipStepper: UIStepper!
    
    //the settings button in the navbar
    @IBOutlet weak var settingsButton: UIButton!

    
    
    //variable to check debugging and that segue is working properly to transfer data from second to first screen
    var debugVariable = NSUserDefaults.standardUserDefaults().valueForKey("defaultTipPercentageInteger")!.intValue
    
    //var debugVariable = 25
  
   
    
    //stepper changed
    @IBAction func stepperChanged(sender: UIStepper){
        peopleLabel.text = Int(sender.value).description
        
        let tipPercentage = Int(tipStepper.value)
        percentageLabel.text = String(tipPercentage) + "%"
        
        
        let doublePeople = NSString(string: peopleLabel.text!).doubleValue
        //print(doublePeople)
        
        
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = (billAmount * Double(tipPercentage)/100)
        
        let total = (tip + billAmount)
        
        let split = total/doublePeople
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
        splitLable.text = String(format: "$%0.2f", split)
        resultView.hidden = false
        
        if(billField.text == ""){
            resultView.hidden = true;
        }
        else{
            resultView.hidden = false;
        }
        
    }
    
    
    
    
    //dynamically changes the content according to the editing made in the check amount
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentage = Int(tipStepper.value)
        
        let doublePeople = NSString(string: peopleLabel.text!).doubleValue
        //print(doublePeople)
        
        
        
       let billAmount = NSString(string: billField.text!).doubleValue
    let tip = (billAmount * Double(tipPercentage)/100) //hard coded for now
        
        let total = (tip + billAmount)
        
        let split = total/doublePeople
        
        //print(doublePeople)
       
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
        splitLable.text = String(format: "$%0.2f", split)
        
        resultView.hidden = false;
        
        if(billField.text == ""){
            resultView.hidden = true;
        }
        else{
            resultView.hidden = false;
        }
    }
  

    
    //when screen is tapped
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)// ends editing
    }
    
    
    //when the view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.billField .becomeFirstResponder()
        
        
        print("MASSIVELY IMPORTANT DEBUGGING STATEMENT:")
        print(debugVariable)
        
        //set the percentage label to the default tip percentage
        percentageLabel.text = String(debugVariable) + "%"
        
        resultView.hidden = true
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        splitLable.text = "$0.00"
         //sets segment index == 0 on load
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 10
    }
    
    //when the first screen appears eg. when returning from settings
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
       // debugVariable = NSUserDefaults.standardUserDefaults().objectForKey("defaultTipPercentage")!.intValue
        
        //debugVariable = 25
        
        debugVariable = NSUserDefaults.standardUserDefaults().valueForKey("defaultTipPercentageInteger")!.intValue
        
        print("MASSIVELY IMPORTANT DEBUGGING STATEMENT:")
        print(debugVariable)
        
        //set the percentage label to the default tip percentage
        percentageLabel.text = String(debugVariable) + "%"
        
        //change the value of tip percentage and perform the arithmetic
        tipStepper.value = Double(debugVariable)
        
        let tipPercentage = Int(tipStepper.value)
        
        percentageLabel.text = String(tipPercentage) + "%"
        
        let doublePeople = NSString(string: peopleLabel.text!).doubleValue
        //print(doublePeople)
        
        
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = (billAmount * Double(tipPercentage)/100) //hard coded for now
        
        let total = (tip + billAmount)
        
        let split = total/doublePeople
        
        //print(doublePeople)
        
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
        splitLable.text = String(format: "$%0.2f", split)
        
        resultView.hidden = false;
        
        if(billField.text == ""){
            resultView.hidden = true;
        }
        else{
            resultView.hidden = false;
        }

    }
    
  
    
 
    
    @IBAction func parseTipPercentage(sender: AnyObject) {
        let tipPercentage = Int(tipStepper.value)
        
        percentageLabel.text = String(tipPercentage) + "%"
        
        let doublePeople = NSString(string: peopleLabel.text!).doubleValue
        //print(doublePeople)
        
        
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = (billAmount * Double(tipPercentage)/100) //hard coded for now
        
        let total = (tip + billAmount)
        
        let split = total/doublePeople
        
        //print(doublePeople)
        
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
        splitLable.text = String(format: "$%0.2f", split)
        
        resultView.hidden = false;
        
        if(billField.text == ""){
            resultView.hidden = true;
        }
        else{
            resultView.hidden = false;
        }
    }
    
    
    
        //event handler for when the settings button is clicked
    @IBAction func settingsClicked(sender: AnyObject) {
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   


}

