//
//  AppFonts.swift
//  CarCheck-ios
//
//  Created by Евгений on 31.07.22.
//

import Foundation
import UIKit

enum AppFonts {
    case SFProDisplayBold
    case RubicRegular
    case MulishRegular
    case RubikMedium
}

extension AppFonts {
    func value(size: CGFloat) -> UIFont {
        switch self {
        case .SFProDisplayBold:
            return UIFont(name: "SFProDisplay-Bold", size: size)!
        case .RubicRegular:
            return UIFont(name: "Rubik-Regular", size: size)!
        case .MulishRegular:
            return UIFont(name: "Mulish-Regular", size: size)!
        case .RubikMedium:
            return UIFont(name: "Rubik-Medium", size: size)!
        }
    }
}
