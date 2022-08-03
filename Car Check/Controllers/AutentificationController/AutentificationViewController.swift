//
//  AutentificationViewController.swift
//  Car Check
//
//  Created by Евгений on 3.08.22.
//

import UIKit

fileprivate struct Constants {
}

class AutentificationViewController : UIViewController {
    
    var presenter : AutentificationPresenterProtocol?
    
    private var contentView: AutentificationViewControllerView {
        view as! AutentificationViewControllerView
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        AutentificationConfigurator.shared.configure(view: self)
    }
    
    override func loadView() {
        self.view = AutentificationViewControllerView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contentView.authorizationImageViewTopConstraint.constant = view.safeAreaInsets.top + 30
    }
    
    private func setupActions() {
        contentView.appleAuthorizationView.authorizationButton.addTarget(self, action: #selector(appleAuthorizationButtonWasPressed), for: .touchUpInside)
        contentView.googleAuthorizationView.authorizationButton.addTarget(self, action: #selector(googleAuthorizationButtonWasPressed), for: .touchUpInside)
    }
    
}

//MARK: OBJC Methods
extension AutentificationViewController {
    
    @objc private func appleAuthorizationButtonWasPressed() {
        
    }
    
    @objc private func googleAuthorizationButtonWasPressed() {
        
    }
}

extension AutentificationViewController : AutentificationViewProtocol {
    
}
