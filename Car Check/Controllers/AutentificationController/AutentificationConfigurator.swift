//
//  AutentificationConfigurator.swift
//  Car Check
//
//  Created by Евгений on 3.08.22.
//VC


protocol AutentificationConfiguratorProtocol {
    func configure(view: AutentificationViewController)
}

class AutentificationConfigurator: AutentificationConfiguratorProtocol {
    
    static let shared = AutentificationConfigurator()
    
    func configure(view: AutentificationViewController) {
        let presenter = AutentificationPresenter(view: view)
        view.presenter = presenter
    }
    
}
