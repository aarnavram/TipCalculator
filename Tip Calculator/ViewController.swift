//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Aarnav Ram on 04/01/17.
//  Copyright © 2017 Aarnav Ram. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var backgrounImg: UIImageView!
    let tipArray = [0.1, 0.15, 0.2]
    
    @IBOutlet weak var onePersonLabel: UILabel!
    @IBOutlet weak var twoPersonLabel: UILabel!
    @IBOutlet weak var threePersonLabel: UILabel!
    @IBOutlet weak var fourPersonLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateValues(_ sender: AnyObject) {
        
        //let bill = (Double(inputTextField.text!) ?? 0) as NSNumber
        let bill = (Double(inputTextField.text!) ?? 0)
        let tip = bill * tipArray[tipPercentage.selectedSegmentIndex]
        let tipNumber = NSNumber(value: Double(tip))
        let total = bill + tip
        let totalNumberOne = NSNumber(value: Double(total))
        let totalNumberTwo = NSNumber(value: Double(total/2))
        let totalNumberThree = NSNumber(value: Double(total/3))
        let totalNumberFour = NSNumber(value: Double(total/4))
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        tipLabel.text = formatter.string(from: tipNumber)
        //formatter.string(from: NSNumber(bill))
        onePersonLabel.text = formatter.string(from: totalNumberOne)
        twoPersonLabel.text = formatter.string(from: totalNumberTwo)
        threePersonLabel.text = formatter.string(from: totalNumberThree)
        fourPersonLabel.text = formatter.string(from: totalNumberFour)
    }
    

}

