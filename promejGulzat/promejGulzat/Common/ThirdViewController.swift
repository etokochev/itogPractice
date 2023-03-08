//
//  ThirdViewController.swift
//  promejGulzat
//
//  Created by Erzhan Tokochev on 3/7/23.
//

import UIKit

class ThirdViewController: UIViewController {

    var b: Bool = true
     
     let wellcomeLabel: UILabel = {
         let label = UILabel()
         label.numberOfLines = 0
         label.font = .systemFont(ofSize: 28)
         label.textColor = .white
         return label
     } ()
     let logLabel: UILabel = {
         let label = UILabel()
         label.numberOfLines = 0
         label.font = .systemFont(ofSize: 20)
         label.textColor = .white
         return label
     } ()
     
     let emailLabel: UILabel = {
         let label = UILabel()
         label.numberOfLines = 0
         label.font = .systemFont(ofSize: 18)
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
     
     let passwLabel: UILabel = {
         let label = UILabel()
         label.numberOfLines = 0
         label.font = .systemFont(ofSize: 18)
         return label
     } ()
     
     let passwTextFil: UITextField = {
         let passwod = UITextField()
         passwod.placeholder = " Password"
         passwod.font = .systemFont(ofSize: 18)
         passwod.layer.cornerRadius = 10
         passwod.layer.backgroundColor = UIColor.white.cgColor
         passwod.layer.borderWidth = 1
         passwod.layer.borderColor = UIColor.gray.cgColor
         
         return passwod
     } ()
     let securyButton: UIButton = {
         let button = UIButton()
         button.setTitle("", for: .normal)
         button.setImage(UIImage(systemName: "eye.fill"), for: .normal)
         button.setTitleColor(.systemRed, for: .normal)
         button.tintColor = .gray
         return button
     } ()
     
     let forgotPaswButton: UIButton = {
         let button = UIButton()
         button.setTitle("Forgot Password?", for: .normal)
         button.setTitleColor(.systemRed, for: .normal)
         button.tintColor = .blue
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
     
     let dontLabel: UILabel = {
         let label = UILabel()
         label.numberOfLines = 0
         label.font = .systemFont(ofSize: 18)
         return label
     } ()
     
     let createNowButton: UIButton = {
         let button = UIButton()
         button.setTitle("Create Now", for: .normal)
         button.setTitleColor(.white, for: .normal)
         return button
     } ()
     
     let logoGoogle: UIImageView = {
         let image = UIImageView()
         image.image = UIImage(named: "logoGoogle")
         image.contentMode = .scaleAspectFill
         image.clipsToBounds = true
         return image
     }()
     
     let logoMeta: UIImageView = {
         let image = UIImageView()
         image.image = UIImage(named: "logoMeta")
         image.contentMode = .scaleAspectFill
         image.clipsToBounds = true
         return image
     }()
     
     let logoInsta: UIImageView = {
         let image = UIImageView()
         image.image = UIImage(named: "logoInsta")
         image.contentMode = .scaleAspectFill
         image.clipsToBounds = true
         return image
     }()
     
     
     
     override func viewDidLoad() {
         super.viewDidLoad()
         initUI()
         initAction()
     }
     private func initUI() {
         
         view.backgroundColor = .black
         
         view.addSubview(wellcomeLabel)
         view.addSubview(logLabel)
         view.addSubview(emailLabel)
         view.addSubview(emailTextFil)
         view.addSubview(passwLabel)
         view.addSubview(passwTextFil)
         
         view.addSubview(securyButton)
         view.addSubview(forgotPaswButton)
         view.addSubview(loginButton)
         view.addSubview(dontLabel)
         view.addSubview(createNowButton)
         view.addSubview(logoGoogle)
         view.addSubview(logoMeta)
         view.addSubview(logoInsta)
         
         wellcomeLabel.text = "Welcome"
         logLabel.text = "Login to you account"
         emailLabel.text = "E-mail"
         emailLabel.textColor = .white
         emailLabel.textAlignment = .left
         passwLabel.text = "Password"
         passwLabel.textColor = .white
         dontLabel.text = "Don't have account?"
         dontLabel.textColor = .gray
         
         
         wellcomeLabel.snp.makeConstraints { make in
             make.centerX.equalToSuperview()
             make.top.equalToSuperview().offset(251)
         }
         
         logLabel.snp.makeConstraints { make in
             make.top.equalTo(wellcomeLabel.snp.bottom).offset(7)
             make.centerX.equalToSuperview()
         }
         
         emailLabel.snp.makeConstraints { make in
             make.leading.trailing.equalToSuperview().inset(20)
             make.top.equalTo(logLabel.snp.bottom).offset(25)
             make.height.equalTo(27.0)
         }
         
         emailTextFil.snp.makeConstraints { make in
             make.leading.trailing.equalToSuperview().inset(20)
             make.height.equalTo(48)
             make.top.equalTo(emailLabel.snp.bottom).offset(8)
         }
         
         passwLabel.snp.makeConstraints { make in
             make.leading.trailing.equalToSuperview().inset(20)
             make.top.equalTo(emailTextFil.snp.bottom).offset(8)
             make.height.equalTo(27.0)
         }
         
         passwTextFil.snp.makeConstraints { make in
             make.leading.trailing.equalToSuperview().inset(20)
             make.height.equalTo(48)
             make.top.equalTo(passwLabel.snp.bottom).offset(8)
         }
         securyButton.snp.makeConstraints { make in
             make.trailing.equalToSuperview().inset(35)
             make.height.width.equalTo(30)
             make.top.equalTo(passwLabel.snp.bottom).offset(15)
         }
         
         forgotPaswButton.snp.makeConstraints { make in
             make.trailing.equalToSuperview().inset(20)
             make.height.equalTo(24)
             make.top.equalTo(passwTextFil.snp.bottom).offset(7)
         }
         
         loginButton.snp.makeConstraints { make in
             make.leading.trailing.equalToSuperview().inset(20)
             make.height.equalTo(48)
             make.top.equalTo(forgotPaswButton.snp.bottom).offset(28)
         }
         dontLabel.snp.makeConstraints { make in
             make.leading.equalToSuperview().inset(50)
             make.height.equalTo(24)
             make.top.equalTo(loginButton.snp.bottom).offset(14)
         }
         createNowButton.snp.makeConstraints { make in
             make.top.equalTo(loginButton.snp.bottom).offset(14)
             make.height.equalTo(24)
             make.left.equalTo(dontLabel.snp.right).offset(7)
         }
         
         logoGoogle.snp.makeConstraints { make in
             make.leading.equalToSuperview().inset(80)
             make.height.width.equalTo(40)
             make.top.equalTo(dontLabel.snp.bottom).offset(49)
         }
         
         logoMeta.snp.makeConstraints { make in
             make.left.equalTo(logoGoogle.snp.right).offset(47)
             make.height.width.equalTo(50)
             make.top.equalTo(dontLabel.snp.bottom).offset(49)
         }
         logoInsta.snp.makeConstraints { make in
             make.left.equalTo(logoMeta.snp.right).offset(47)
             make.height.width.equalTo(50)
             make.top.equalTo(dontLabel.snp.bottom).offset(49)
         }
     }
     
     private func initAction() {
         loginButton.addTarget(self,
                               action: #selector(goToNextPage(_ :)),
                               for: .touchUpInside)
         securyButton.addTarget(self,
                                action: #selector(goToClick(_ :)),
                                for: .touchUpInside)
     }
     
     @objc func goToNextPage(_ sender: UIButton) {
         let vc = SecondViewController()
         vc.nameValue = emailTextFil.text ?? "empty"
         self.navigationController?.pushViewController(vc, animated: true)
     }
     
     @objc func goToClick(_ sender: UIButton) {
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
