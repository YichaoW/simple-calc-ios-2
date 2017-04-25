//
//  ViewController.swift
//  simple-calc
//
//  Created by Yichao Wang on 4/17/17.
//  Copyright © 2017 Yichao Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    var operations = ""
    var outputText = ""
    var opon = true
    var decion = false
    var avgon = false
    var counton = false
    var endon = false
    var history = [String]()

    
    func clear() {
        operations = ""
        outputText = ""
        opon = true
        decion = false
        avgon = false
        counton = false
        endon = false
    }
    
    @IBOutlet weak var output: UITextField!
    @IBAction func opmod(_ sender: UIButton) {
        if opon == false && avgon == false && counton == false {
            operations += " % "
            opon = true
            decion = false
            outputText = "%"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opdiv(_ sender: UIButton) {
        if opon == false && avgon == false && counton == false {
            operations += " / "
            opon = true
            decion = false
            outputText = "/"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opmulti(_ sender: UIButton) {
        if opon == false && avgon == false && counton == false {
            operations += " * "
            opon = true
            decion = false
            outputText = "*"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opsub(_ sender: UIButton) {
        if opon == false && avgon == false && counton == false {
            operations += " - "
            opon = true
            decion = false
            outputText = "-"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opadd(_ sender: UIButton) {
        if opon == false && avgon == false && counton == false {
            operations += " + "
            opon = true
            decion = false
            outputText = "+"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opfact(_ sender: UIButton) {
        if opon == false && operations.components(separatedBy: " ").count == 1 {
            print(operations)
            var label = operations;
            var result = 1
            let startnum = Int(Double(operations)!)//Int(operations)!
            if (startnum > 0) {
                for index in 1...startnum {
                    result *= index
                }
            }
            outputText = "\(result)"
            label = "\(label) fact = \(result)"
            history.append(label)
            output.text = outputText
            
            clear()
        }
    }
    
    @IBAction func opavg(_ sender: UIButton) {
        if opon == false && counton == false {
            operations += " avg "
            opon = true
            avgon = true
            decion = false
            outputText = "avg"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opcount(_ sender: UIButton) {
        if opon == false && avgon == false {
            operations += " count "
            opon = true
            counton = true
            decion = false
            outputText = "count"
            output.text = outputText
            outputText = ""
            endon = false
        }
    }
    
    @IBAction func opdot(_ sender: UIButton) {
        if decion == false {
            operations += "."
            outputText += "."
            output.text = outputText
            decion = true
        }
    }
    
    @IBAction func opeql(_ sender: UIButton) {
        if opon == false {
            print(operations)
            var label = operations
            let ops = operations.components(separatedBy: " ")
            if ops.count > 1 {
                var num = Double(ops[0])!
                if ops[1] == "count" {
                    operations = "\(ops.count / 2 + 1)"
                    output.text = operations
                    label = "\(label) = \(ops.count / 2 + 1)"
                    history.append(label)
                } else {
                    for index in stride(from: 1, to: ops.count - 1, by: 2) {
                        switch ops[index] {
                            case "+":
                                num = num + Double(ops[index + 1])!
                            case "-":
                                num = num - Double(ops[index + 1])!
                            case "*":
                                num = num * Double(ops[index + 1])!
                            case "/":
                                num = num / Double(ops[index + 1])!
                            case "%":
                                num = num.truncatingRemainder(dividingBy: Double(ops[index + 1])!)
                            default:
                                num = num + Double(ops[index + 1])!
                                if index + 1 == ops.count - 1 {
                                    num = num / Double(ops.count / 2 + 1)
                                }
                        }
                    }
                    label = "\(label) = \(num)"
                    history.append(label)
                    operations = "\(num)"
                    output.text = operations
                }
            } else {
                label = "\(label) = \(Double(ops[0])!)"
                history.append(label)
                operations = "\(Double(ops[0])!)"
                output.text = operations
            }
            
            outputText = ""
            opon = false
            decion = false
            avgon = false
            counton = false
            endon = true
        }
        
    }
    
    @IBAction func numone(_ sender: UIButton) {
        if endon == true {
            operations = "1"
            endon = false
            outputText = "1"
        } else {
            operations += "1"
            outputText += "1"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numtwo(_ sender: UIButton) {
        if endon == true {
            operations = "2"
            endon = false
            outputText = "2"
        } else {
            operations += "2"
            outputText += "2"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numthree(_ sender: UIButton) {
        if endon == true {
            operations = "3"
            endon = false
            outputText = "3"
        } else {
            operations += "3"
            outputText += "3"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numfour(_ sender: UIButton) {
        if endon == true {
            operations = "4"
            endon = false
            outputText = "4"
        } else {
            operations += "4"
            outputText += "4"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numfive(_ sender: UIButton) {
        if endon == true {
            operations = "5"
            endon = false
            outputText = "5"
        } else {
            operations += "5"
            outputText += "5"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numsix(_ sender: UIButton) {
        if endon == true {
            operations = "6"
            endon = false
            outputText = "6"
        } else {
            operations += "6"
            outputText += "6"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numseven(_ sender: UIButton) {
        if endon == true {
            operations = "7"
            endon = false
            outputText = "7"
        } else {
            operations += "7"
            outputText += "7"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numeight(_ sender: UIButton) {
        if endon == true {
            operations = "8"
            endon = false
            outputText = "8"
        } else {
            operations += "8"
            outputText += "8"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numnine(_ sender: UIButton) {
        if endon == true {
            operations = "9"
            endon = false
            outputText = "9"
        } else {
            operations += "9"
            outputText += "9"
        }
        opon = false
        output.text = outputText
    }
    
    @IBAction func numzero(_ sender: UIButton) {
        if endon == true {
            operations = "0"
            endon = false
            outputText = "0"
        } else {
            operations += "0"
            outputText += "0"
        }
        opon = false
        output.text = outputText
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hvc = segue.destination as! HistoryViewController
        hvc.history = history
    }

}

