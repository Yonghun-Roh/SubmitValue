//
//  ViewController.swift
//  SubmitValue
//
//  Created by Yonghun Roh on 2022/09/11.
//

import UIKit

class ViewController: UIViewController {

    // 이메일 주소를 입력받는 텍스트 필드
    @IBOutlet var email: UITextField!
    
    // 자동 갱신 여부를 설정하는 스위치
    @IBOutlet var isUpdate: UISwitch!
    // 자동 갱신 여뷰가 바뀔 때마다 호출되는 스위치
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
            
        } else {
            
            self.isUpdateText.text = "갱신하지 않음"
        }
    
    
    }
    
    //갱신 주기를 설정하는 스테퍼
    @IBOutlet var interval: UIStepper!
    // 갱신 주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    
    //자동 갱신 여부를 표시하는 레이블
    @IBOutlet var isUpdateText: UILabel!
    
    //갱신 주기를 텍스트로 표시하는 레이블
    @IBOutlet var intervalText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }


}

