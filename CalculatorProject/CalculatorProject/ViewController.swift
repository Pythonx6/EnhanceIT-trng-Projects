//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Consultant on 8/21/22.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: - OUTLETS
    
    // MARK: - LABELS ==============//
    
    @IBOutlet weak var calcWorking: UILabel!
    
    @IBOutlet weak var calcResult: UILabel!
    
    var working:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }
    
    func clearAll()
    {
        working = ""
        calcWorking.text = ""
        calcResult.text = ""
    }

    //MARK: - OPERATORS  ====================//
    
    @IBAction func resetAction(_ sender: Any)
    {
        clearAll()
    }
    
    @IBAction func backTap(_ sender:Any){
        if (!working.isEmpty)
        {
            working.removeLast()
            calcWorking.text = working
        }
    }
    
    func addToWorking(value: String){
        working = working + value
        calcWorking.text = working
    }
    
    
    @IBAction func percentAction(_ sender: Any) {
        addToWorking(value:  "%")
    }
    
    @IBAction func divisionAction(_ sender: Any) {
        addToWorking(value: "/")
    }
    
    @IBAction func multiplicationAction(_ sender: Any) {
        addToWorking(value: "*")
    }
    
    @IBAction func minusAction(_ sender: Any) {
        addToWorking(value: "-")
    }
    
    @IBAction func plusAction(_ sender: Any) {
        addToWorking(value:  "+")
    }
    
    @IBAction func equalAction(_ sender: Any) {
        
    let expression = NSExpression(format: working)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calcResult.text = resultString
    }
    
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func decimalAction(_ sender: Any) {
        addToWorking(value: ".")
    }
    
    // MARK: - NUMBERS
    
    
    @IBAction func num0(_ sender: Any) {
        addToWorking(value: "0")
    }
    
    @IBAction func num1(_ sender: Any) {
        addToWorking(value: "1")
    }
    
    @IBAction func num2(_ sender: Any) {
        addToWorking(value: "2")
    }
    
    @IBAction func num3(_ sender: Any) {
        addToWorking(value: "3")
    }
    
    @IBAction func num4(_ sender: Any) {
        addToWorking(value: "4")
    }
    
    @IBAction func num5(_ sender: Any) {
        addToWorking(value: "5")
    }
    
    @IBAction func num6(_ sender: Any) {
        addToWorking(value: "6")
    }
    
    @IBAction func num7(_ sender: Any) {
        addToWorking(value: "7")
    }
    
    @IBAction func num8(_ sender: Any) {
        addToWorking(value: "8")
    }
    
    @IBAction func num9(_ sender: Any) {
        addToWorking(value: "9")
    }
    

}

