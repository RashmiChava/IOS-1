//
//  ViewController.swift
//  Tummala_Calculator
//
//  Created by Tummala,Nagarushyanth on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    var pressedNumber = ""
    var oldNumber = ""
    var signOperator: Character = " "
    
    var presentNumberFinished: Bool = false
    
    func appendPressedButton( number: String ){
        if presentNumberFinished == false {
            pressedNumber = pressedNumber +  number
        }else{
            pressedNumber = number
            presentNumberFinished = false
        }
        ResultLabel.text = pressedNumber
    }
    func clearAll(){
        pressedNumber = ""
        oldNumber = ""
        signOperator = " "
        ResultLabel.text = "0"
        print(pressedNumber)
    }
    
    func signOperator( signOperator: Character ){

        if presentNumberFinished == false {
            presentNumberFinished = true
            if oldNumber.isEmpty {
                oldNumber = pressedNumber
                pressedNumber = ""
            }else{
                appendResult(result: calculate())

            }
        }
        self.signOperator = signOperator
    }
    
    func appendResult(result: String){
        ResultLabel.text = result
        pressedNumber = result
        oldNumber = result
    }
    
    
    func calculate()->String{
        var result: String = ""
        let firstNumber = Double(oldNumber)!
        let secondNumber = Double(pressedNumber)!
        switch signOperator {
        case "+":
            result = String(firstNumber + secondNumber)
        case "-":
            result = String(firstNumber - secondNumber)
        case "*":
            result = String(firstNumber * secondNumber)
        case "/":
            if secondNumber == 0 {
                    result = "Error"
            }else{
                result = String(firstNumber / secondNumber)
            }
        case "%":
            if secondNumber == 0 {
                    result = "Error"
            }else{
                result = String(firstNumber / secondNumber)
            }

        default:
            result = ""
        }
       result = roundOff(result)
        
        return result
        
    }
    
    
    func roundOff(_ result:String) -> String{
        if result == "Error" {
            return result
        }
        let splitArray = result.split(separator: ".")
        var decimalVal = Double ("0." + splitArray[1])
        if splitArray[1].count > 5 {
            print(splitArray[0])
            decimalVal = Double(String(format: "%.5f", decimalVal!))
            print(String(Double(splitArray[0])! + decimalVal!))
            return String(Double(splitArray[0])! + decimalVal!)
        }else if result.count > 2{
            let index = result.index(result.endIndex, offsetBy: -2)
            if result[index..<result.endIndex] == ".0" {
                print(result[index..<result.endIndex])
                return String(result[result.startIndex..<index])
            }
            return result
        }else
        {
            return result
        }
//        return result

    }
    
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func buttonAC(_ sender: UIButton) {
        clearAll()
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        pressedNumber = ""
        ResultLabel.text = "0"
    }
    
    @IBAction func buttonplus_minus(_ sender: UIButton) {
        if pressedNumber.first == "-" {
            pressedNumber.removeFirst()
        }
        else if pressedNumber != "0"{
            pressedNumber = "-" + pressedNumber
        }
        ResultLabel.text = pressedNumber
    }
    
    @IBAction func buttonDiv(_ sender: UIButton) {
        signOperator(signOperator: "/")

    }
    
    @IBAction func button7(_ sender: UIButton) {
        appendPressedButton(number: "7")
    }
    
    @IBAction func button8(_ sender: UIButton) {
        appendPressedButton(number: "8")
    }
    
    @IBAction func button9(_ sender: UIButton) {
        appendPressedButton(number: "9")
    }
    
    @IBAction func buttonX(_ sender: UIButton) {
        signOperator(signOperator: "*")
    }
    
    @IBAction func button4(_ sender: UIButton) {
        appendPressedButton(number: "4")
    }
    
    @IBAction func button5(_ sender: UIButton) {
        appendPressedButton(number: "5")
    }
    
    @IBAction func button6(_ sender: UIButton) {
        appendPressedButton(number: "6")
    }
    
    @IBAction func buttonminus(_ sender: UIButton) {
        signOperator(signOperator: "-")
        
    }
    
    @IBAction func button1(_ sender: UIButton) {
        appendPressedButton(number: "1")
    }
    
    @IBAction func button2(_ sender: UIButton) {
        appendPressedButton(number: "2")
    }
    
    @IBAction func button3(_ sender: UIButton) {
        appendPressedButton(number: "3")
    }
    
    @IBAction func buttonplus(_ sender: UIButton) {
        signOperator(signOperator: "+")
    }
    
    @IBAction func buttonzero(_ sender: UIButton) {
        appendPressedButton(number: "0")
    }
    
    @IBAction func buttondot(_ sender: UIButton) {
        appendPressedButton(number: ".")
        
    }
    
    @IBAction func buttonpercent(_ sender: UIButton) {
        signOperator(signOperator: "%")
    }
    
    @IBAction func buttonequals(_ sender: UIButton) {
        if signOperator != " " {
            if pressedNumber.isEmpty {
                pressedNumber = ResultLabel.text!
            }
            appendResult(result: calculate())
            presentNumberFinished = true
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }


}

