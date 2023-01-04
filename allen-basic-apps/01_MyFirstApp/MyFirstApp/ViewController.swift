//
//  ViewController.swift
//  MyFirstApp
//
//  Created by SJ Park on 2023/01/01.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLabel.text = "Wassup";
        
        myButton.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1);
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal);
        
        
//        mainLabel.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1);
//        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1);
//        mainLabel.textAlignment = NSTextAlignment.center;
        //        mainLabel.backgroundColor = UIColor.yellow;
    }
    
    //앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

