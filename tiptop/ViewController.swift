//
//  ViewController.swift
//  tiptop
//
//  Created by Elizabeth Chen on 10/3/19.
//  Copyright © 2019 elizvictory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmt: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var anotherTipAmt = 0.0
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var enterAnotherTipAmount = segue.destination as! EnterAnotherPercentage
        anotherTipAmt = Double(enterAnotherTipAmount.anotherAmt.text)
        <#code#>
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let percentages = [0.15, 0.18, 0.20]
        // get the bill amount
        let bill = Double(billAmt.text!) ?? 0
        //calculate tip and total
       
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // update tip and total
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

