//
//  AutentificationViewControllerView.swift
//  Car Check
//
//  Created by Евгений on 3.08.22.
//

import UIKit

class AutentificationViewControllerView : UIView {
    
    private let AUTHORIZATION_VIEW_HEIGHT: CGFloat = 55
    
    var authorizationImageViewTopConstraint: NSLayoutConstraint!
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .clear
        scrollView.showsVerticalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    let authorizationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "authorizationImage")
        return imageView
    }()
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = AppFonts.SFProDisplayBold.value(size: 24)
        label.textAlignment = .center
        label.textColor = AppColor.White.value
        label.text = "Добро пожаловать!"
        return label
    }()
    lazy var appleAuthorizationView: AuthorizationButtonView = {
        let view = AuthorizationButtonView(authorizationImageViewName: "appleAuthorizationLogo", authorizationTitleLabelText: "Вход с помощью Apple")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = AUTHORIZATION_VIEW_HEIGHT / 2
        return view
    }()
    lazy var googleAuthorizationView: AuthorizationButtonView = {
        let view = AuthorizationButtonView(authorizationImageViewName: "googleAuthorizationLogo", authorizationTitleLabelText: "Вход с помощью Google")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = AUTHORIZATION_VIEW_HEIGHT / 2
        return view
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        layoutElements()
        backgroundColor = AppColor.BackgroundColor.value
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layoutElements() {
        layoutScrollView()
        layoutAuthorizationImageView()
        layoutWelcomeLabel()
        layoutAppleAuthorizationView()
        layoutGoogleAuthorizationView()
    }
    
    private func layoutScrollView() {
        addSubview(scrollView)
        scrollView.fillSuperview()
    }
    
    private func layoutAuthorizationImageView() {
        scrollView.addSubview(authorizationImageView)
        let originalHeight: CGFloat = 260
        let originalWidth: CGFloat = 414
        let originalAspectRatio = originalHeight / originalWidth
        let newWidth = UIScreen.main.bounds.width
        let newHeight = newWidth * originalAspectRatio
        NSLayoutConstraint.activate([
            authorizationImageView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            authorizationImageView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            authorizationImageView.heightAnchor.constraint(equalToConstant: newHeight),
            authorizationImageView.widthAnchor.constraint(equalToConstant: newWidth)
        ])
        authorizationImageViewTopConstraint =  authorizationImageView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor)
        authorizationImageViewTopConstraint.isActive = true
    }
    
    private func layoutWelcomeLabel() {
        scrollView.addSubview(welcomeLabel)
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: authorizationImageView.bottomAnchor, constant: 20),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            welcomeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
    private func layoutAppleAuthorizationView() {
        scrollView.addSubview(appleAuthorizationView)
        NSLayoutConstraint.activate([
            appleAuthorizationView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 25),
            appleAuthorizationView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            appleAuthorizationView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            appleAuthorizationView.heightAnchor.constraint(equalToConstant: AUTHORIZATION_VIEW_HEIGHT)
        ])
    }
    
    private func layoutGoogleAuthorizationView() {
        scrollView.addSubview(googleAuthorizationView)
        NSLayoutConstraint.activate([
            googleAuthorizationView.topAnchor.constraint(equalTo: appleAuthorizationView.bottomAnchor, constant: 16),
            googleAuthorizationView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            googleAuthorizationView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            googleAuthorizationView.heightAnchor.constraint(equalToConstant: AUTHORIZATION_VIEW_HEIGHT),
            googleAuthorizationView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor)
        ])
    }
}

