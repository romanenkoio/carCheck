//
//  UIViewController+Extensions.swift
//  Car Check
//
//  Created by Illia Romanenko on 3.08.22.
//

import Foundation
import UIKit

extension UIViewController {
    class func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }

        return instantiateFromNib()
    }
}
