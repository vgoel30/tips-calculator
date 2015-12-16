//
//  SecondViewController.swift
//  tips
//
//  Created by Varun Goel on 12/12/15.
//  Copyright © 2015 Varun Goel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    //tester label for debugging purposes to see if data is being passed normally or not
    @IBOutlet weak var labelA: UILabel!
    
    //variable to hold the data passed
    var dataPassed:String?
    
    //default percentages value
    let percentages = ["15","20","22","25"]
    
    //default percentages value of integers to make life easier
    let percentagesInt = [15,20,22,25]
    
    
    

    //picker view for the default tip
    @IBOutlet weak var tipsPicker: UIPickerView!
    
    

    //tester label
    @IBOutlet weak var defaultTip: UILabel!
    
    //NSUser member
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var tipSegments: UISegmentedControl!
    
    //if tip segment is changed
    @IBAction func tipSegmentChanged(sender: AnyObject) {
        //changing the defualt percentages
        //defaultTip.text = percentages[tipSegments.selectedSegmentIndex]
        
        //testing nsuser defaults: writing
        
        
        let numberToSet = Int(percentages[tipSegments.selectedSegmentIndex])
        
        //let numberToSet = percentagesInt[tipSegments.selectedSegmentIndex]
        
        defaults.setInteger(numberToSet!, forKey: "defaultTipPercentageInteger")
        
        defaults.setValue(numberToSet, forKey: "defaultTipPercentage")
        
        
        defaults.synchronize()
        
        //testing nsuser defaults: reading
        
        //reflecting the change in the default tip percentage value
        //let intValue = defaults.integerForKey("defaultTipPercentage")
        //labelA.text = String(intValue)
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //changing the defualt percentages
        
       // defaultTip.text = percentages[tipSegments.selectedSegmentIndex]
        
        
        //reading the value of default tip percentage in the cache
        
        let stringValue = defaults.valueForKey("defaultTipPercentage")
        
        
        let intValue = defaults.valueForKey("defaultTipPercentageInteger")
      
       
        print("before")
        print(tipSegments.selectedSegmentIndex)
        
        //resets the segment for the default tip percentages
        tipSegments.selectedSegmentIndex = percentages.indexOf((intValue?.description)!)!
      
        
        //reflect the change in default tip perecentages
        //defaultTip.text = percentages[tipSegments.selectedSegmentIndex]
        
        print("after")
        print(tipSegments.selectedSegmentIndex )
        
        print("debug check")
        print(intValue)
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
  

}
