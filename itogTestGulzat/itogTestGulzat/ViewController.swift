//
//  ViewController.swift
//  itogTestGulzat
//
//  Created by Erzhan Tokochev on 3/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomeBack: UILabel!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var enterYourNum: UILabel!
    @IBOutlet weak var enterNumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if enterNumTextField.text?.isEmpty ?? true {
            enterNumTextField.layer.borderWidth = 2
            enterNumTextField.layer.borderColor = UIColor.red.cgColor
            enterNumTextField.placeholder = "Заполните!"
        } else {
            enterNumTextField.layer.borderWidth = 0
            enterNumTextField.layer.borderColor = UIColor.white.cgColor
            enterNumTextField.placeholder = "Кайф!"
            let contactsTVC = ContactsViewController()
            self.navigationController?.pushViewController(contactsTVC, animated: true)
        }
    }
}

