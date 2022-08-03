//
//  SettingCell.swift
//  ShopList
//
//  Created by Illia Romanenko on 23.04.22.
//

import UIKit
import Firebase

class SettingCell: UITableViewCell {
    static let id = String(describing: SettingCell.self)
    
    @IBOutlet private weak var imageLabel: UIImageView!
    @IBOutlet private weak var settingLabel: UILabel!
    @IBOutlet private weak var switcher: UISwitch!
    @IBOutlet weak var indicator: UIImageView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func setupWith(_ type: CCSettingPoint) {
//        self.indicator.isHidden = type.indicator == .none
//        imageLabel.image = type.image
//        imageLabel.tintColor = type.tint
//        settingLabel.text = type.text
//        switcher.isHidden = type.switcherHidden
//        imageLabel.isHidden = type.imageHidden
//        switcher.isOn = type.state
        settingLabel.text = "Пункт меню"

//        self.contentView.alpha = type.isEnabled ? 1 : 0.5
    }
    

}
