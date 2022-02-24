//
//  ViewController.swift
//  Tummala_CurrencyConverter
//
//  Created by Tummala,Nagarushyanth on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    
    
   
    @IBOutlet weak var NameTextField: UITextField!

    @IBOutlet weak var INRTextField: UITextField!

    @IBOutlet weak var USDTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        var name = NameTextField.text
        
        var inr = Int(INRTextField.text!)
        
        var usd = Int(USDTextField.text!)
        
        var usdtoinr = round(Double(usd!) * 74.64 * 100)/100.0
        
        var inrtousd = round(Double(inr!)/74.64 * 100)/100.0
        
        resultLabel.text = "Hello \(name!),\nAmount Rs.\(inr!) in USD is $\(inrtousd)\nAmount $\(usd!) in INR is Rs.\(usdtoinr)"
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

