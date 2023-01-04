//
//  ViewController.swift
//  rpsGame
//
//  Created by SJ Park on 2023/01/03.
//

import UIKit

class ViewController: UIViewController {
    
    //변수 / 속성
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var myChoice: Rps = Rps.rock;
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!;
    
    //함수 / 메서드
    override func viewDidLoad() {
        super.viewDidLoad();
        
        comImageView.image = #imageLiteral(resourceName: "ready");
        myImageView.image = UIImage(named: "ready.png");
        
        comChoiceLabel.text = "준비";
        myChoiceLabel.text = "준비";
    }
    
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        
        switch title {
        case "가위":
            myChoice = Rps.scissors;
        case "바위":
            myChoice = Rps.rock;
        case "보":
            myChoice = Rps.paper;
        default:
            break;
        }
    }
    
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock");
            comChoiceLabel.text = "바위";
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper");
            comChoiceLabel.text = "보";
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors");
            comChoiceLabel.text = "가위";
        }
        
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock");
            myChoiceLabel.text = "바위";
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper");
            myChoiceLabel.text = "보";
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors");
            myChoiceLabel.text = "가위";
        }
        
        if comChoice == myChoice {
            mainLabel.text = "비겼다";
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다";
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다";
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다";
        } else {
            mainLabel.text = "졌다";
        }
    }
    
    

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        comImageView.image = #imageLiteral(resourceName: "ready");
        comChoiceLabel.text = "준비";
        
        myImageView.image = #imageLiteral(resourceName: "ready");
        myChoiceLabel.text = "준비";
        
        mainLabel.text = "선택하세요";
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!;
    }
    
}
