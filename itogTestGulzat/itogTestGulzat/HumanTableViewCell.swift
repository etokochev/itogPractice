//
//  HumanTableViewCell.swift
//  itogTestGulzat
//
//  Created by Erzhan Tokochev on 3/14/23.
//

import UIKit

class HumanTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    
    public func initUI(logo: String, nam: String, num: String) {
        avatar.image = UIImage(named: logo)
        name.text = nam
        number.text = num
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
