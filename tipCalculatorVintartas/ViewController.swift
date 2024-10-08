//
//  ViewController.swift
//  tipCalculatorVintartas
//
//  Created by Nicholas Vintartas on 10/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var percField: UITextField!
    
    @IBOutlet weak var peopleField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var changeLabel: UILabel!
    
    var bill = 0.00
    
    var tip = 0.00
    
    var total = 0.00
    
    var people = 0
    
    var div = 0.00
    
    var change = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        bill = Double(billField.text!)!
        tip = Double(percField.text!)!*bill/100
        people = Int(peopleField.text!)!
        tip = round(100.0 * tip) / 100.0
        total = bill + tip
        div = round(100.0 * (total / Double(people))) / 100.0
        while div * Double(people) < total {
            div = div + 0.01
        }
        change = div*Double(people) - total
        change = round(change * 100.0) / 100.0
        tipLabel.text = "Tip: $\(tip)"
        totalLabel.text = "Total: $\(total)"
        splitLabel.text = "Each person should pay: $\(div)"
        changeLabel.text = "Change due: $\(change)"
    }
    
}

