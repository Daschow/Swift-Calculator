//
//  ViewController.swift
//  Calculatrice
//
//  Created by Jessy Defrasnes on 08/09/2020.
//  Copyright © 2020 Jessy Defrasnes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Display
    @IBOutlet weak var display_lbl: UILabel!
    
    //Btn chiffre
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    //btn operation
    @IBOutlet weak var btnDivision: UIButton!
    @IBOutlet weak var btnMultiply: UIButton!
    @IBOutlet weak var btnAddition: UIButton!
    @IBOutlet weak var btnSubstraction: UIButton!
    
    @IBOutlet weak var btnModulo: UIButton!
    @IBOutlet weak var btnNegOrPos: UIButton!
    @IBOutlet weak var btnComa: UIButton!
    @IBOutlet weak var btnClear: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        display_lbl.text = ""
    }
    
    var operateur : String = ""
    var number1 : Double = 0
    var number2 : Double
        = 0
    var result : Double = 0
    var display : String = "0"
    var decimal : Int = 0
    var entier : Int = 0
    
    @IBAction func hasPressed0(_ sender: Any) {
        displayNumber(number: 0)
    }
    
    @IBAction func hasPressed1(_ sender: Any) {
        displayNumber(number: 1)
    }
    @IBAction func hasPressed2(_ sender: Any) {
        displayNumber(number: 2)
    }
    @IBAction func hasPressed3(_ sender: Any) {
        displayNumber(number: 3)
    }
    @IBAction func hasPressed4(_ sender: Any) {
        displayNumber(number: 4)
    }
    @IBAction func hasPressed5(_ sender: Any) {
        displayNumber(number: 5)
    }
    @IBAction func hasPressed6(_ sender: Any) {
        displayNumber(number: 6)
    }
    @IBAction func hasPressed7(_ sender: Any) {
        displayNumber(number: 7)
    }
    @IBAction func hasPressed8(_ sender: Any) {
        displayNumber(number: 8)
    }
    @IBAction func hasPressed9(_ sender: Any) {
        displayNumber(number: 9)
    }
    
    
    //Result
    @IBAction func hasPressedEqual(_ sender: Any) {
        if(display_lbl.text!.contains("+") == true){
            let equationFull = display_lbl.text!.split(separator: "+")
            result = Double(String(equationFull[0]))! + Double(String(equationFull[1]))!
            display_lbl.text! = String(result)
            
        } else if(display_lbl.text!.contains("-") == true) {
            let equationFull = display_lbl.text!.split(separator: "-")
            result = Double(String(equationFull[0]))! - Double(String(equationFull[1]))!
            display_lbl.text! = String(result)
        } else if(display_lbl.text!.contains("/") == true) {
            let equationFull = display_lbl.text!.split(separator: "/")
            result = Double(String(equationFull[0]))! / Double(String(equationFull[1]))!
            display_lbl.text! = String(result)
        }
        else if(display_lbl.text!.contains("*") == true) {
            let equationFull = display_lbl.text!.split(separator: "*")
            result = Double(String(equationFull[0]))! * Double(String(equationFull[1]))!
            display_lbl.text! = String(result)
        }
        
    }
    
    // ,
    @IBAction func hasPressedComa(_ sender: Any) {
        display_lbl.text! += "."
    }
    // Clear
    @IBAction func hasPressedClearDisplay(_ sender: Any) {
        display_lbl.text! = "0"
    }
    
    // +
    @IBAction func hasPressedAddition(_ sender: Any) {
        number1 = Double(display_lbl.text!)!
        display_lbl.text! += "+"
        operateur = "+"
    }
    
    // -
    @IBAction func hasPressedNeg(_ sender: Any) {
    number1 = Double(display_lbl.text!)!
    display_lbl.text! += "-"
    operateur = "-"
    }
    
    // /
    
    @IBAction func hasPressedDiv(_ sender: Any) {
        number1 = Double(display_lbl.text!)!
        display_lbl.text! += "/"
        operateur = "/"
    }
    
    // *
    
    @IBAction func hasPressedMultiply(_ sender: Any) {
        number1 = Double(display_lbl.text!)!
        display_lbl.text! += "*"
        operateur = "*"
    }
    // invert
    @IBAction func hasPressedInvert(_ sender: Any) {
         var render = (Double(display_lbl.text!)!)
        render.negate()
        display_lbl.text = ""
        displayNumber(number: render)
    }
    
    
    //display
    func displayNumber(number :Double){
        
        let Oldnumbers = display_lbl.text!.split(separator: ".")
        
        
        
        if(display_lbl.text == ""){
            display_lbl.text! = String(number)
        }
        else{

            if display_lbl.text!.prefix(1) == "0" {
                //faut le supprimer mais flemme un peu la
            }
            
            
            let Newnumbers = String(number).split(separator: ".")
//            if (Oldnumbers[0].count > 0){
//                if(String(Oldnumbers[1]).contains("0") && String(Newnumbers[1]).contains("0") == true){
//                   decimal = 0
//                } else{
//
//                }
//            }
            
            
            display_lbl.text = ""
            display_lbl.text! = String(Oldnumbers[0]) + String(Newnumbers[0])
    }
}

}
