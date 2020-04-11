//
//  ViewController.swift
//  CarWash3000
//
//  Created by Avni Rexhaj on 3/2/20.
//  Last modified on 3/9/2020
//  Copyright © 2020 Avni Rexhaj. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // import the label in order to access it
    @IBOutlet weak var washOptionLabel: UILabel!
    @IBOutlet weak var sliderLabel: UISlider!
    @IBOutlet weak var MyTextBox: UITextField!
    
    // import function dismissKeybpard
    @IBAction func dismissKeyboard(_ sender: Any)
    {
        MyTextBox.resignFirstResponder()
    }
    
    // connect SedanButton function and calculate charges
    @IBAction func SedanButton(_ sender: UIButton) {
        // assign constant double to base cost for carwash chosen
        let cost: Double = 30.00
        //display Total charges to user
        totalCharges.text = "Thank you " + MyTextBox.text! + " for choosing us!" + "\n*******************************\nYour total charges for today are: $" +  String(cost) + "\n*******************************\nHave a nice day!"
    }
    // connect TruckButton function and calculate charges
    @IBAction func TruckButton(_ sender: UIButton) {
        // assign constant double to base cost for carwash chosen
        let cost: Double = 30.00
        //display total charges to user on label totalCharges
        totalCharges.text = "Thank you " + MyTextBox.text! + " for choosing us!" + "\n*******************************\nYour total charges for today are: $" +  String(cost) + "\n*******************************\nHave a nice day!"
    }
    
    @IBAction func SUVButton(_ sender: UIButton) {
        // assign constant double to base cost for carwash chosen
        let cost: Double = 30.00
        let surchargeSUV: Double = 10
        // calculate the total for SUV vehicle
        let SUVchargeTotal = cost + surchargeSUV
        //display total charges to user on label totalCharges
        totalCharges.text = "Thank you " + MyTextBox.text! + " for choosing us!" + "\n*******************************\nYour total charges for today are: $" +  String(SUVchargeTotal) + "\n*******************************\nHave a nice day!"
    }
    
    @IBAction func SportButton(_ sender: UIButton) {
        // assign constant double to base cost for carwash chosen
        let cost: Double = 30.00
        // assign additional charges to constant surchargeSport,
        let surchargeSport: Double = 20
        // calculate the total for sport car
        let sportChargeTotal = cost + surchargeSport
        //display total charges to user on label totalCharges
        totalCharges.text = "Thank you " + MyTextBox.text! + " for choosing us!" + "\n*******************************\nYour total charges for today are: $" +  String(sportChargeTotal) + "\n*******************************\nHave a nice day!"
    }

    // impor a slider and add action to choose options
    @IBAction func slider(_ sender: UISlider)
    {
       /* enum ASCIIColor: String {
            case black = "\u{001B}[0;30m"
            case red = "\u{001B}[0;31m"
            case green = "\u{001B}[0;32m"
            case yellow = "\u{001B}[0;33m"
            case blue = "\u{001B}[0;34m"
            case magenta = "\u{001B}[0;35m"
            case cyan = "\u{001B}[0;36m"
            case white = "\u{001B}[0;37m"
            case `default` = "\u{001B}[0;0m"
        }
       */
        
        // USAGE:
        // "\("only this string will be green!", color: .green)"
        
        // use switch statements
        var soapColorsOption: Int = 0
        // take the integer value chosen from slider
        // and apply to the swich statement
        soapColorsOption = (Int(sender.value))
        
        // customer counter variable to keep track the number of times carwash turned ON and OFF
        var counter: Int = 55
        counter += 1
        
        var soap: String
        
        switch soapColorsOption {
        case 1:
            soap = "** YELLOW SOAP **"
        case 2:
            soap = "** GREEN SOAP **"
        case 3:
            soap = "** BLUE SOAP **"
        case 4:
            soap = "** RED SOAP **"
        case 5:
            soap = "** PURPLE SOAP **"
        default:
            soap = "     Slide to choose >>"
        }
        
        //washOptionLabel.text = soap
        counterLabel.text = "You are " + (String(Int(counter))) + "th customer"
        
        if(soap == "** YELLOW SOAP **")
        {
            let string = soap
            let attributedString = NSMutableAttributedString.init(string: string)
            let range = (string as NSString).range(of: "** YELLOW SOAP **")
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.yellow, range: range)
            
            washOptionLabel.attributedText = attributedString
            washOptionLabel.isUserInteractionEnabled = true
            washOptionLabel.isEnabled = true
        }
        else if(soap == "** GREEN SOAP **")
        {
            let string = soap
            let attributedString = NSMutableAttributedString.init(string: string)
            let range = (string as NSString).range(of: "** GREEN SOAP **")
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: range)
            
            washOptionLabel.attributedText = attributedString
            washOptionLabel.isUserInteractionEnabled = true
            washOptionLabel.isEnabled = true
        }
        else if(soap == "** BLUE SOAP **")
        {
            let string = soap
            let attributedString = NSMutableAttributedString.init(string: string)
            let range = (string as NSString).range(of: "** BLUE SOAP **")
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: range)
            
            washOptionLabel.attributedText = attributedString
            washOptionLabel.isUserInteractionEnabled = true
            washOptionLabel.isEnabled = true
        }
        else if(soap == "** RED SOAP **")
        {
            let string = soap
            let attributedString = NSMutableAttributedString.init(string: string)
            let range = (string as NSString).range(of: "** RED SOAP **")
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: range)
            
            washOptionLabel.attributedText = attributedString
            washOptionLabel.isUserInteractionEnabled = true
            washOptionLabel.isEnabled = true
        }
        else if(soap == "** PURPLE SOAP **")
        {
            let string = soap
            let attributedString = NSMutableAttributedString.init(string: string)
            let range = (string as NSString).range(of: "** PURPLE SOAP **")
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple, range: range)
            
            washOptionLabel.attributedText = attributedString
            washOptionLabel.isUserInteractionEnabled = true
            washOptionLabel.isEnabled = true
        }
        else{
            let string = soap
            let attributedString = NSMutableAttributedString.init(string: string)
            let range = (string as NSString).range(of: "     Slide to choose >>")
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.cyan, range: range)
            
            washOptionLabel.attributedText = attributedString
            washOptionLabel.isUserInteractionEnabled = true
            washOptionLabel.isEnabled = true
        }
        // using arrays to store color soap options
        //let soapOption = ["Slide right to choose >>", "yellow", "green", "blue", "red", "purple"]
        
        // printing soap options
        //washOptionLabel.text = soapOption [(Int(sender.value))]
    }
    var someInstance = CWEnterButton()
    
    var counter: Int = 0
    
    @IBOutlet weak var ShowWelcomeMessage: UILabel!
    @IBOutlet weak var totalCharges: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func textUpdate(_ sender: Any) {
        if let myText = MyTextBox.text, !myText.isEmpty{
            
            ShowWelcomeMessage.text = "Welcome " + myText + " to CarWash3000!"
        } else {
            print("no value")
        }
    }
    
    //override func viewDidLoad() {
        //super.viewDidLoad()
    
    
        // Do any additional setup after loading the view.
        //self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"iPhoneBackroundImg2.png"]];
        /*
        let colors = "<font size = 20><font color = red>this </font><font color = blue>is </font><font color = purple>color</font></font>"
        
        washOptionLabel.text = "\(colors)"
 
        let encoding = colors.data(usingEncoding: String.Encoding.utf16)!
        let options = [NSAttributedString.DocumentAttributeKey.documentType: NSAttributedString.DocumentType.html]
        do {
            let string = try! NSAttributedString(data: encoding, options: options, documentAttributes: nil);
            washOptionLabel.attributedText = string
        }
        */
        
        
    //}
}


