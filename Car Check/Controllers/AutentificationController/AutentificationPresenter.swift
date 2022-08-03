//
//  AutentificationPresenter.swift
//  Car Check
//
//  Created by Евгений on 3.08.22.
//VC


protocol AutentificationViewProtocol: AnyObject {
    
}

protocol AutentificationPresenterProtocol {
    init(view : AutentificationViewProtocol )
}


class AutentificationPresenter : AutentificationPresenterProtocol {
    
    weak var view : AutentificationViewProtocol?
    
    required init(view : AutentificationViewProtocol ) {
        self.view = view
    }
    
}
