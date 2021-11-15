//
//  ViewController.swift
//  swiftMidterm1
//
//  Created by user209978 on 11/15/21.
//

import UIKit

class ViewController: UIViewController {
    var numGue = 0
    var numAns = 0
    var nPlayCounts = 0
    
    
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var outputResult: UILabel!
    @IBOutlet weak var btnRenew: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numAns = Int.random(in: 1...10)
        outputResult.text = "Happy\nGuessing"
        btnRenew.isHidden = true
    }

    @IBAction func guessFunc(_ sender: UIButton){
        nPlayCounts = nPlayCounts+1
        numGue = Int(inputNumber.text!)!
        if(nPlayCounts>=5){
            outputResult.text = "Fail the Game ..."
            btnRenew.isHidden = false
        }
        else if (numGue > numAns) {
            outputResult.text = "Less than " + String(numGue)
        }
        else if (numGue < numAns) {
            outputResult.text = "Greater than " + String(numGue)
        }
        else{
            outputResult.text = "Correct !!"
            btnRenew.isHidden = false
        }
    }
    
    @IBAction func renewFunc(_ sender: UIButton){
        nPlayCounts = 0
        numAns = Int.random(in: 1...10)
        outputResult.text = "Happy\nGuessing"
        btnRenew.isHidden = true
    }
    
}

