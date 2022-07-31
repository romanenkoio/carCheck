//
//  CarCell.swift
//  Car Check
//
//  Created by Illia Romanenko on 25.07.22.
//

import UIKit

class CarCell: UITableViewCell {
    static let id = String(describing: CarCell.self)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
}
