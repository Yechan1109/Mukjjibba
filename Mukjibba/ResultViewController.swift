//
//  ResultViewController.swift
//  Mukjibba
//
//  Created by t2023-m0013 on 6/10/24.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 리셋 버튼 라운드 코너
        resetButton.layer.cornerRadius = 10
        
        
    }
    // 초기 타이머 세팅
    var chargeTime: Int = 10
    
    @IBAction func resetButtonClick(_ sender: Any) {
        
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
                self.timerLabel.text = "\(minutes):\(seconds)"
                // 타이머 포맷을 00:00으로 세팅
                self.timerLabel.text = String(format: "%02d:%02d", minutes, seconds)
            } else if self.chargeTime == 0 {
                self.timerLabel.text = "코인 +1"
                self.chargeTime = 10
            }
            
        })
    }
    
}

