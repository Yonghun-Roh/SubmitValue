//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by Yonghun Roh on 2022/09/11.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!  //이메일
 
    @IBOutlet var resultUpdate: UILabel!  //자동갱신 여부
    
    @IBOutlet var resultInterval: UILabel! //갱신주기
    
    
    // email 값을 받을 변수
    var paramEmail: String = ""
    // update 값을 받을 변수
    var paramUpdate: Bool = false
    //Interval 값을 받을 변수
    var paramInterval: Double = 0
    
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
        // 3항 연산자 : a가 참이면 b를, 거짓이면 c를 반환합니다.
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
