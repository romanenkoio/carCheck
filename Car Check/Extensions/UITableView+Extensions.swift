//
//  UITableView+Extensions.swift
//  Car Check
//
//  Created by Illia Romanenko on 3.08.22.
//

import Foundation
import UIKit

extension UITableView {
    func registerCellsWith(_ classes: [AnyClass]) {
        for item in classes {
            let nib = UINib(nibName: String(describing: item.self), bundle: nil)
            self.register(nib, forCellReuseIdentifier: String(describing: item.self))
        }
    }
}
