//
//  TabBarController.swift
//  Car Check
//
//  Created by Illia Romanenko on 3.08.22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let list = UINavigationController(rootViewController: CarsController())
        let services = UINavigationController(rootViewController: ServicesController())
        let setting = UINavigationController(rootViewController: CarsController())

        list.tabBarItem = UITabBarItem(title: "Мой гараж", image: UIImage(systemName: "checklist"), tag: 0)
        services.tabBarItem = UITabBarItem(title: "Сервисы", image: UIImage(systemName: "gear"), tag: 1)
        setting.tabBarItem = UITabBarItem(title: "Настройки", image: UIImage(systemName: "gear"), tag: 2)

        self.tabBar.tintColor = .cyan
        self.viewControllers = [list, services, setting]
    }

}
