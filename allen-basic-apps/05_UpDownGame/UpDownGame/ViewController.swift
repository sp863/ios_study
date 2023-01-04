//
//  ViewController.swift
//  UpDownGame
//
//  Created by SJ Park on 2023/01/04.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var comNumber = Int.random(in: 1...10);
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "선택하세요";
        numberLabel.text = "";
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        guard let numString = sender.currentTitle else { return };
        
        numberLabel.text = numString;
        
        
        
    }
    
    
    
    @IBAction func selectButtonPressed(_ sender: UIButton) {
        guard let myNumString = numberLabel.text else { return };
        guard let myNumber = Int(myNumString) else { return };
        
        
        if comNumber > myNumber {
            mainLabel.text = "Up";
        } else if comNumber < myNumber {
            mainLabel.text = "Down";
        } else {
            mainLabel.text = "Bingo😎";
        }
    }
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        mainLabel.text = "선택하세요";
        numberLabel.text = "";
        comNumber = Int.random(in: 1...10);
        
    }
}


