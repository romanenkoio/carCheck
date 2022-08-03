//
//  SceneDelegate.swift
//  Car Check
//
//  Created by Illia Romanenko on 25.07.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        window?.rootViewController = TabBarController()
//        window?.rootViewController = AutentificationViewController()
        window?.makeKeyAndVisible()
    }
}

