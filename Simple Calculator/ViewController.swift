/*
 * ViewController.swift
 * Project : Simple Calculator
 * Name : Sumit Ganju
 * Student ID : 300959971
 * Version 0.1 : Built the Basic UI
 */

import UIKit

class ViewController: UIViewController {
    
    var firstNumber : Double = 0;
    var finalNumber : Double = 0;
    var sign : String = ""
    var answer : Double = 0

    @IBOutlet weak var Label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if answer == 0 {
            if Label.text == "+" {
                Label.text = String(sender.tag)
            } else if Label.text == "-" {
                Label.text = String(sender.tag)
            } else if Label.text == "x" {
                Label.text = String(sender.tag)
            } else if Label.text == "/" {
                Label.text = String(sender.tag)
            } else {
                Label.text = Label.text! + String(sender.tag)
            }
        } else {
            Label.text = ""
            answer = 0
            finalNumber = 0
            firstNumber = 0
            sign = ""
            if Label.text == "+" {
                Label.text = String(sender.tag)
            } else if Label.text == "-" {
                Label.text = String(sender.tag)
            } else if Label.text == "x" {
                Label.text = String(sender.tag)
            } else if Label.text == "/" {
                Label.text = String(sender.tag)
            } else {
                Label.text = Label.text! + String(sender.tag)
            }
        }
    
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
        
        if Label.text != ""
        {
            if sender.tag == 11 {
                firstNumber = Double(Label.text!)!
                sign = "+"
                Label.text = "+"
            } else if sender.tag == 12 {
                firstNumber = Double(Label.text!)!
                sign = "-"
                Label.text = "-"
            } else if sender.tag == 13 {
                    firstNumber = Double(Label.text!)!
                    sign = "x"
                    Label.text = "x"
            } else if sender.tag == 14 {
                firstNumber = Double(Label.text!)!
                sign = "/"
                Label.text = "/"
            } else if sender.tag == 15 {
                firstNumber = 0
                finalNumber = 0
                sign = ""
                Label.text = ""
            } else if sender.tag == 10 {
                if firstNumber != 0{
                    finalNumber = Double(Label.text!)!
                    
                    if sign == "+" {
                    answer = firstNumber + finalNumber
                     Label.text = String(answer)
            } else if sign == "-" {
                answer = firstNumber - finalNumber
                Label.text = String(answer)
            } else if sign == "x" {
                    answer = firstNumber * finalNumber
                    Label.text = String(answer)
            } else if sign == "/" {
                answer = firstNumber / finalNumber
                 Label.text = String(answer)
                    }
            }
            
        }
        
    }
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

         override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



