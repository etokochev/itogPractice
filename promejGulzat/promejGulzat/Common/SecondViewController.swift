//
//  SecondViewController.swift
//  promejGulzat
//
//  Created by Erzhan Tokochev on 3/7/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var nameValue: String?
    
    let beginLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 5
        return label
    } ()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white
        label.numberOfLines = 0
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 5
        return label
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        guard let name = nameValue else {return}
        
        view.addSubview(beginLabel)
        view.addSubview(nameLabel)
        
        beginLabel.text = "Your mail has been identified"
        nameLabel.text = name
        
        beginLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(251)
            make.centerX.equalToSuperview()
            
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(beginLabel.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
        }
    }
}
