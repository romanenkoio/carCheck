//
//  AppColor.swift
//  CarCheck-ios
//
//  Created by Евгений on 31.07.22.
//

import Foundation
import UIKit

enum AppColor {
    case White
    case BackgroundColor
}

extension AppColor {
    var value: UIColor {
        switch self {
        case .White:
            return #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 1)
        case .BackgroundColor:
            return #colorLiteral(red: 0.1490196078, green: 0.1647058824, blue: 0.2039215686, alpha: 1)
        }
    }
}
