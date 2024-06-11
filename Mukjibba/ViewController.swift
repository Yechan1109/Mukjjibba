//
//  ViewController.swift
//  Mukjibba
//
//  Created by t2023-m0013 on 6/10/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
//    @IBAction func btnScissors(_ sender: Any) {
//        actionToCom(0)
//    }
//    
//    @IBAction func btnRock(_ sender: Any) {
//        actionToCom(1)
//    }
//    
//    @IBAction func btnPaper(_ sender: Any) {
//        actionToCom(2)
//    }
//    
//    func actionToCom(_ player: Int) {
//        let computer = Int.random(in: 0...2)
//        
//        // 가위 = 0, 바위 = 1, 보 = 2
//        // 내가 가위일 때
//        if player == 0 {
//            if computer == 0 {
//                print("Draw!")
//            }
//            else if computer == 1 {
//                print("You Lost :(")
//            }
//            else {
//                print("You Win :)")
//            }
//        }
//        if player == 1 {
//            if computer == 0 {
//                print("You Win :)")
//            }
//            else if computer == 1 {
//                print("Draw!")
//            }
//            else {
//                print("You Lost :(")
//            }
//        }
//        if player == 2 {
//            if computer == 0 {
//                print("You Lost :(")
//            }
//            else if computer == 1 {
//                print("You Win :)")
//            }
//            else {
//                print("Draw!")
//            }
//        }
//    }
    
    // 초기 타이머 세팅
    var chargeTime: Int = 10
    
    @IBAction func resetBtnClick(_ sender: Any) {
        
        //1초마다 타이머 반복 실행
        Timer.scheduledTimer(withTimeInterval: 1, // 1초당 초침 동작하도록
                             repeats: true,       // 클릭시 자동 움직임
                             block: { (t) in
            //현재 시간에서 -1초 하기
            self.chargeTime -= 1
            //남은 분 (00:)
            let minutes = self.chargeTime / 60
            //남은 초 (:00)
            let seconds = self.chargeTime % 60
     
            //남은 시간이 0을 초과하면
            if self.chargeTime > 0 {
                self.timeLabel.text = "\(minutes):\(seconds)"
                // 타이머 포맷을 00:00으로 세팅
                self.timeLabel.text = String(format: "%02d:%02d", minutes, seconds)
            } else if self.chargeTime == 0 {
                self.timeLabel.text = "코인 +1"
                //
                self.chargeTime = 10
            }
//            타이머 종료시 사용할 메서드 - timer.invalidate()
            // maxToken이 10이상이면 타이머 종료
        })
    }
    
    
    
    
    
}



