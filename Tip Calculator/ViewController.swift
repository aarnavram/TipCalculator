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
        
        let bill = Double(inputTextField.text!) ?? 0
        let tip = bill * tipArray[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "%.2f", tip)
        onePersonLabel.text = String(format: "%.2f", total)
        twoPersonLabel.text = String(format: "%.2f", total/2)
        threePersonLabel.text = String(format: "%.2f", total/3)
        fourPersonLabel.text = String(format: "%.2f", total/4)
    }
    

}

