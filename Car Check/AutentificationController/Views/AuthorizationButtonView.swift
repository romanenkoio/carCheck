//
//  AuthorizationButtonView.swift
//  Car Check
//
//  Created by Евгений on 3.08.22.
//

import Foundation
import UIKit

class AuthorizationButtonView: UIView {
    
    private let BUTTON_BORDER_HEIGHT: CGFloat = 25
    
    private let authorizationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let authorizationTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        label.textColor = AppColor.White.value
        label.font = AppFonts.RubicRegular.value(size: 15)
        label.textAlignment = .center
        return label
    }()
    let authorizationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(authorizationImageViewName: String, authorizationTitleLabelText: String ) {
        super .init(frame: .zero)
        
        authorizationImageView.image = UIImage(named: authorizationImageViewName)
        authorizationTitleLabel.text = authorizationTitleLabelText
        
        layoutElements()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        layer.borderWidth = 1
        layer.borderColor = AppColor.White.value.cgColor
    }
    
    private func layoutElements() {
        layoutAuthorizationImageView()
        layoutAuthorizationTitleLabel()
        layoutAuthorizationButton()
    }
    
    private func layoutAuthorizationImageView() {
        addSubview(authorizationImageView)
        NSLayoutConstraint.activate([
            authorizationImageView.heightAnchor.constraint(equalToConstant: BUTTON_BORDER_HEIGHT),
            authorizationImageView.widthAnchor.constraint(equalToConstant: BUTTON_BORDER_HEIGHT),
            authorizationImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            authorizationImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func layoutAuthorizationTitleLabel() {
        addSubview(authorizationTitleLabel)
        NSLayoutConstraint.activate([
            authorizationTitleLabel.centerYAnchor.constraint(equalTo: authorizationImageView.centerYAnchor),
            authorizationTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: BUTTON_BORDER_HEIGHT + 16),
            authorizationTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
    private func layoutAuthorizationButton() {
        addSubview(authorizationButton)
        authorizationButton.fillSuperview()
    }
    
}
