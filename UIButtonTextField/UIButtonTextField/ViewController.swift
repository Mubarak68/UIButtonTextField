//
//  ViewController.swift
//  UIButtonTextField
//
//  Created by Mubarak Aloraifan on 28/02/2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    let myImage = UIImageView()
    let myButton = UIButton(type: .system)
    let myTextField = UITextField()
    
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUpUi()
        viewSubViews()
        myConstraint()
        saveButtonTapped()
        myButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
    }
    
    func setUpUi(){
        
        myButton.setTitle("Click Me!", for: .normal)
        myTextField.placeholder = "Type here..."
        myImage.image = UIImage(named: "")
        //Button
        myButton.backgroundColor = .cyan
        myButton.setTitleColor(.black, for: .normal)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        myButton.layer.cornerRadius = 10
        myButton.layer.borderWidth = 1
        myButton.layer.borderColor = UIColor.black.cgColor
        
        //TextField
        myTextField.font = UIFont.systemFont(ofSize: 14)
        myTextField.textColor = .darkGray
        myTextField.textAlignment = .center
        myTextField.keyboardType = .default
    }
    
    func viewSubViews(){
        view.addSubview(myButton)
        view.addSubview(myTextField)
        view.addSubview(myImage)
    }
    
    func myConstraint(){
        // Button
        myButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
        
        //TextField
        myTextField.snp.makeConstraints { make in
            make.bottom.equalTo(myButton.snp.top).offset(-10)
            make.centerX.equalToSuperview()
            make.width.equalTo(50)
        }
        
        //Image
        myImage.snp.makeConstraints { make in
            make.bottom.equalTo(myTextField.snp.bottom).offset(-40)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(200)
        }
    }
    
    @objc func saveButtonTapped() {
        
        selectedImage = myTextField.text ?? ""
        
        myImage.image = UIImage(named: selectedImage)
    }
    
}
