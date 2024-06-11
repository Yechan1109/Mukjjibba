//
//  ViewController.swift
//  Mukjibba
//
//  Created by t2023-m0013 on 6/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var playerResultLabel: UILabel!
    @IBOutlet weak var computerResultLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var vsResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var playerChoice = 0
    let choiceDict: [Int: String] = [1: "Rock", 2: "Scissors", 3: "Paper"]
    
    
    
    @IBAction func buttonTap(_ sender: UIButton) {
        
        
        switch sender.tag {
        case 1:
            playerResultLabel.text = choiceDict[1]
            playerChoice = 1
        case 2:
            playerResultLabel.text = choiceDict[2]
            playerChoice = 2
        case 3:
            playerResultLabel.text = choiceDict[3]
            playerChoice = 3
        default:
            playerResultLabel.text = "Unknown"
        }
    }
    
    @IBAction func playButtonTap(_ sender: UIButton) {
        
        
        if playerChoice != 0 {
            
            if let computerChoice = choiceDict.randomElement(){
                computerResultLabel.text = computerChoice.value
                
                let gameResult = vsResult(playerChoice: playerChoice, computerChoice: computerChoice.key)
                vsResultLabel.text = gameResult
                
                let resultAlert = UIAlertController(title: "결과", message: gameResult, preferredStyle: .alert)
                resultAlert.addAction(UIAlertAction(title: "확인", style: .default, handler: { _ in
                    resultAlert.dismiss(animated: true, completion: nil)}))
                
                self.present(resultAlert, animated: true, completion: nil)
                
                self.playerResultLabel.text = "Player"
                playerChoice = 0
                
                
            }
        }else if playerChoice == 0 {
                let warning = UIAlertController(title: "주의", message: "가위, 바위, 보 중에 하나를 선택해 주세요.", preferredStyle: .alert)
                warning.addAction(UIAlertAction(title: "확인", style: .destructive, handler: { _ in
                    warning.dismiss(animated: true, completion: nil)
                }))
                self.present(warning, animated: true, completion: nil)
            }
        }
        
    
    
        func vsResult(playerChoice: Int, computerChoice: Int) -> String {
            if playerChoice == computerChoice {
                return "비겼습니다"
            } else if (playerChoice == 1 && computerChoice == 2) ||
                        (playerChoice == 2 && computerChoice == 3) ||
                        (playerChoice == 3 && computerChoice == 1){
                return "이겼습니다!!"
            } else {
                return "졌습니다.."
        }
    }
}

