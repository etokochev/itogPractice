//
//  FifthViewController.swift
//  promejGulzat
//
//  Created by Erzhan Tokochev on 5/3/23.
//

import UIKit

class FifthViewController: UIViewController {
    
    var b: Bool = true
    
    let registerLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 28)
        label.text = "Register"
        label.textColor = .white
        return label
    } ()
    let createLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20)
        label.text = "Create a new account"
        label.textColor = .white
        return label
    } ()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Username"
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .left
        label.textColor = .white
        return label
    } ()
    
    let userNameTextFil: UITextField = {
        let emailtf = UITextField()
        emailtf.placeholder = " Username"
        emailtf.font = .systemFont(ofSize: 18)
        emailtf.layer.cornerRadius = 10
        emailtf.layer.backgroundColor = UIColor.white.cgColor
        emailtf.layer.borderWidth = 1
        emailtf.layer.borderColor = UIColor.gray.cgColor
        return emailtf
    } ()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.text = "E-mail"
        label.textAlignment = .left
        label.textColor = .white
        return label
    } ()
    
    let emailTextFil: UITextField = {
        let emailtf = UITextField()
        emailtf.placeholder = " E-mail"
        emailtf.font = .systemFont(ofSize: 18)
        emailtf.layer.cornerRadius = 10
        emailtf.layer.backgroundColor = UIColor.white.cgColor
        emailtf.layer.borderWidth = 1
        emailtf.layer.borderColor = UIColor.gray.cgColor
        return emailtf
    } ()
    
    let mobileNumLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.text = "Mobile Number"
        label.textAlignment = .left
        label.textColor = .white
        return label
    } ()
    
    let mobileNumTextFil: UITextField = {
        let emailtf = UITextField()
        emailtf.placeholder = "Mobile Number"
        emailtf.font = .systemFont(ofSize: 18)
        emailtf.layer.cornerRadius = 10
        emailtf.layer.backgroundColor = UIColor.white.cgColor
        emailtf.layer.borderWidth = 1
        emailtf.layer.borderColor = UIColor.gray.cgColor
        return emailtf
    } ()
    
    let passwLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Password"
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .left
        label.textColor = .white
        return label
    } ()
    
    let passwTextFil: UITextField = {
        let passwtf = UITextField()
        passwtf.placeholder = "Password"
        passwtf.font = .systemFont(ofSize: 18)
        passwtf.layer.cornerRadius = 10
        passwtf.layer.backgroundColor = UIColor.white.cgColor
        passwtf.layer.borderWidth = 1
        passwtf.layer.borderColor = UIColor.gray.cgColor
        
        return passwtf
    } ()
    let securyButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
        button.tintColor = .gray
        return button
    } ()
    
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initAction()
    }
    private func initUI() {
        
        view.backgroundColor = .black
        
        view.addSubview(registerLabel)
        view.addSubview(createLabel)
        view.addSubview(userNameLabel)
        view.addSubview(userNameTextFil)
        
        view.addSubview(emailLabel)
        view.addSubview(emailTextFil)
        view.addSubview(mobileNumLabel)
        view.addSubview(mobileNumTextFil)
        view.addSubview(passwLabel)
        view.addSubview(passwTextFil)
        
        view.addSubview(securyButton)
        view.addSubview(loginButton)
        
        registerLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(42)
            make.top.equalToSuperview().offset(230)
        }
        
        createLabel.snp.makeConstraints { make in
            make.top.equalTo(registerLabel.snp.bottom).offset(7)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
        }
        
        userNameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(30)
            make.top.equalTo(createLabel.snp.bottom).offset(18)
            make.height.equalTo(27.0)
        }
        
        userNameTextFil.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(userNameLabel.snp.bottom).offset(6)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(30)
            make.top.equalTo(userNameTextFil.snp.bottom).offset(6)
            make.height.equalTo(27.0)
        }
        
        emailTextFil.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
        }
        mobileNumLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(30)
            make.height.equalTo(27)
            make.top.equalTo(emailTextFil.snp.bottom).offset(6)
        }
        
        mobileNumTextFil.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(mobileNumLabel.snp.bottom).offset(4)
        }
        
        passwLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(30)
            make.height.equalTo(27)
            make.top.equalTo(mobileNumTextFil.snp.bottom).offset(6)
        }
        passwTextFil.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(passwLabel.snp.bottom).offset(4)
        }
        securyButton.snp.makeConstraints { make in
            make.top.equalTo(passwLabel.snp.bottom).offset(14)
            make.trailing.equalToSuperview().inset(40)
            make.height.equalTo(24)
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
            make.top.equalTo(passwTextFil.snp.bottom).offset(26)
        }
    }
    
    private func initAction() {
        loginButton.addTarget(self,
            action: #selector(goToNextPage2(_ :)),
            for: .touchUpInside)
        securyButton.addTarget(self,
            action: #selector(goToClick2(_ :)),
            for: .touchUpInside)
        
    }
    
    @objc func goToNextPage2(_ sender: UIButton) {
        
        if  userNameTextFil.text?.isEmpty ?? true {
            userNameTextFil.layer.borderWidth = 2
            userNameTextFil.layer.borderColor = UIColor.red.cgColor
            userNameTextFil.placeholder = "Please fill in the information"
        }
        
        if  emailTextFil.text?.isEmpty ?? true {
            emailTextFil.layer.borderWidth = 2
            emailTextFil.layer.borderColor = UIColor.red.cgColor
            emailTextFil.placeholder = "Please fill in the information"
        }
        
        if  mobileNumTextFil.text?.isEmpty ?? true {
            mobileNumTextFil.layer.borderWidth = 2
            mobileNumTextFil.layer.borderColor = UIColor.red.cgColor
            mobileNumTextFil.placeholder = "Please fill in the information"
        }
        
        if  passwTextFil.text?.isEmpty ?? true {
            passwTextFil.layer.borderWidth = 2
            passwTextFil.layer.borderColor = UIColor.red.cgColor
            passwTextFil.placeholder = "Please fill in the information"
        } else {
            let vc = SecondViewController()
            vc.nameValue = emailTextFil.text ?? "empty"
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func goToClick2(_ sender: UIButton) {
        if b {
            securyButton.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
            passwTextFil.isSecureTextEntry = true
            b = false
        } else {
            securyButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            passwTextFil.isSecureTextEntry = false
            b = true
        }
    }
}
