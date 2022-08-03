//
//  CCSettingPoint.swift
//  Car Check
//
//  Created by Illia Romanenko on 3.08.22.
//

import Foundation

enum CCSettingPoint: CaseIterable {
    case profile
    case separateList
    case autoDelete
    case useTimePush
    case morningTime
    case language
    case version
    case premium
    
    static func getMenu() -> [[CCSettingPoint]] {
        return [[.profile], [.premium], [.separateList, .autoDelete], [.useTimePush, .morningTime], [.language, .version]]
    }
}
