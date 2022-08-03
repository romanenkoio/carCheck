//
//  ServiceCell.swift
//  Car Check
//
//  Created by Illia Romanenko on 25.07.22.
//

import UIKit

class ServiceCell: UITableViewCell {
    static let id = String(describing: ServiceCell.self)

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }


}
