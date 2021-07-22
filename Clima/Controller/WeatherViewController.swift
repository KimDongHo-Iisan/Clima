//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        print(searchTextField.text!) //강제 언래핑을 하지 않으면, 안에 있는 값을 출력할수 없음, 이유는 text안이 비어있을 가능성도 있기 때문.
    }
    
    //리턴 키를 눌렀을때 실행이 되도록 하는 함수
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true) // 입력이 끝나면 키보드가 내려가도록 하는 코드
        print(searchTextField.text!)
        return true
    }
    
    // 만약 입력이 끝났다면, 빈 문자열을 출력
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else { // 아니라면, 텍스트 필드 부분에 문자열을 출력해서 입력 하라고 경고를 해줌.
            textField.placeholder = "Type something"
            return false
        }
    
    }
    
    //입력이 끝나면 입력한 문자가 사라지도록 하는 코드
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }
    
}

