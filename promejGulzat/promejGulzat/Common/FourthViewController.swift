//
//  FourthViewController.swift
//  promejGulzat
//
//  Created by Erzhan Tokochev on 3/7/23.
//

import UIKit

class FourthViewController: UIViewController {
    
    var nameEmail: String?
    
    let forgotPasswLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 28)
        label.text =  "Forgot Password"
        label.textColor = .white
        return label
    } ()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.text = "Enter your e-mail"
        label.textColor = .white
        label.textAlignment = .left
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
    
    let chooseLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.text = "Choose Another Method"
        label.textColor = .gray
        return label
    } ()
    
    let needHelpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Need Help?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.tintColor = .blue
        return button
    } ()
    
    let sendOTPButton: UIButton = {
        let button = UIButton()
        button.setTitle("Send OTP", for: .normal)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let name = nameEmail else {return}
        emailTextFil.text = name
        initUI()
        initAction()
    }
    private func initUI() {
        view.backgroundColor = .black
        view.addSubview(forgotPasswLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextFil)
        view.addSubview(chooseLabel)
        view.addSubview(needHelpButton)
        view.addSubview(sendOTPButton)
        
        forgotPasswLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(36)
            make.top.equalToSuperview().offset(231)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswLabel.snp.bottom).offset(61)
            make.height.equalTo(26)
            make.leading.equalToSuperview().inset(31)
        }
        
        emailTextFil.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
        }
        
        chooseLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextFil.snp.bottom).offset(11)
            make.leading.equalTo(34.0)
            make.height.equalTo(24.0)
        }
        
        needHelpButton.snp.makeConstraints { make in
            make.height.equalTo(24)
            make.top.equalTo(emailTextFil.snp.bottom).offset(11)
            make.left.equalTo(chooseLabel.snp.right).offset(7)
        }
        sendOTPButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(48)
            make.height.equalTo(48)
            make.top.equalTo(chooseLabel.snp.bottom).offset(31)
        }
    }
    
    private func initAction() {
        sendOTPButton.addTarget(self,
                                action: #selector(goToAlertAction(_ :)),
                                for: .touchUpInside)
        needHelpButton.addTarget(self,
                                 action: #selector(showAlert(_ :)),
                                 for: .touchUpInside)
    }
    
    @objc func goToAlertAction(_ sender: UIButton) {
        
        if emailTextFil.text?.isEmpty ?? true {
            emailTextFil.layer.borderWidth = 2
            emailTextFil.layer.borderColor = UIColor.red.cgColor
            emailTextFil.placeholder = "Заполните"
            
            let alert1 = UIAlertController(title: "Information", message: "Заполните", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default)
            alert1.addAction(okBtn)
            present(alert1, animated: true)
        } else {
            let alert = UIAlertController(title: "Information", message: "A message has been sent to this email! ", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default)
            let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(okBtn)
            alert.addAction(cancelBtn)
            present(alert, animated: true)
        }
    }
    
    @objc func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Help", message: "Another method helped you?", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Ok", style: .default)
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(okBtn)
        alert.addAction(cancelBtn)
        present(alert, animated: true)
    }
}
