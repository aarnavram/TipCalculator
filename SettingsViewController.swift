//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Aarnav Ram on 05/01/17.
//  Copyright © 2017 Aarnav Ram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultSegControl: UISegmentedControl!
    let segArray = [0.1, 0.15, 0.2]
    let defaults = UserDefaults.standard
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaults.set(0.10, forKey: "defaultTip")
        defaults.synchronize()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onValueChanged(_ sender: AnyObject) {
        let selectedIndex = defaultSegControl.selectedSegmentIndex as NSNumber
        defaults.set(selectedIndex, forKey: "defaultTip")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
