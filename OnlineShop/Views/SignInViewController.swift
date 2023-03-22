//
//  SignInViewController.swift
//  OnlineShop
//
//  Created by Никита on 15.03.2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    private let titleLabel = TitleLabel(text: Resources.SignInStrings.titleString)
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.SignInStrings.messageString
        label.font = UIFont(name: Resources.Fonts.montserratRegular, size: 9.42)
        label.textColor = Resources.Colors.black
        return label
    }()
    private let firstNameTextField = AuthTextField(placeholder: Resources.SignInStrings.firstNameTextHolderString)
    private let lastNameTextField = AuthTextField(placeholder: Resources.SignInStrings.lastNameTextHolderString)
    private let emailTextField = AuthTextField(placeholder: Resources.SignInStrings.emailTextHolderString)
    private let signInButton = LogButton(title: Resources.SignInStrings.sigInButtonString)
    private let logInButton = ExtraButton(title: Resources.SignInStrings.logInButtonString,
                                          color: Resources.Colors.purple,
                                          fontSize: 9.57)
    
    private let appleButton = ExtraButton(title: Resources.SignInStrings.appleString,
                                          color: Resources.Colors.black,
                                          fontSize: 11.48)
   
    private let googleButton = ExtraButton(title: Resources.SignInStrings.googleString,
                                           color: Resources.Colors.black,
                                           fontSize: 11.48)
    let appleImageView: UIImageView = {
        let imageView = UIImageView()
        let appleImage = UIImage(named: "apple.png")
        imageView.image = appleImage
        return imageView
    }()
    
    let googleImageView: UIImageView = {
        let imageView = UIImageView()
        let googleImage = UIImage(named: "google.png")
        imageView.image = googleImage
        return imageView
    }()
    
    @objc func signInButtonIsPressed(sender: UIButton!) {
    }
    
    @objc func logInButtonIsPressed(sender: UIButton!) {
    }
    
    @objc func appleButtonIsPressed(sender: UIButton!) {
    }
    
    @objc func googleButtonIsPressed(sender: UIButton!) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    private func configureViewController() {
        view.backgroundColor = Resources.Colors.white
        
        view.addSubview(titleLabel)
        selTitleLabelConstraints()
        
        view.addSubview(firstNameTextField)
        setFirstNameTextFieldConstreints()
        
        view.addSubview(lastNameTextField)
        setLastNameTextFieldConstreints()
        
        view.addSubview(emailTextField)
        setEmailTextFieldConstreints()
        
        view.addSubview(signInButton)
        setlogButtonConstraints()
        
        view.addSubview(messageLabel)
        setMessageLabelConstraints()
        
        view.addSubview(logInButton)
        setLogInButtonConstraints()
        
        view.addSubview(googleImageView)
        setGoogleImageViewConsttraints()
        
        view.addSubview(googleButton)
        setGoogleButtonConstraints()
        
        view.addSubview(appleImageView)
        setAppleImageViewConsttraints()
        
        view.addSubview(appleButton)
        setAppleButtonConstraints()
        
        addTargets()
    }
    
    private func addTargets() {
        signInButton.addTarget(self, action: #selector(signInButtonIsPressed), for: .touchUpInside)
        logInButton.addTarget(self, action: #selector(logInButtonIsPressed), for: .touchUpInside)
        appleButton.addTarget(self, action: #selector(appleButtonIsPressed), for: .touchUpInside)
        googleButton.addTarget(self, action: #selector(googleButtonIsPressed), for: .touchUpInside)
    }
}

extension SignInViewController {
    
    private func selTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.heightAnchor.constraint(equalToConstant: 25.3).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 88).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 156).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setFirstNameTextFieldConstreints() {
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.heightAnchor.constraint(equalToConstant: 29).isActive = true
        firstNameTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        firstNameTextField.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 77.77).isActive = true
        firstNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setLastNameTextFieldConstreints() {
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.heightAnchor.constraint(equalToConstant: 29).isActive = true
        lastNameTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 35).isActive = true
        lastNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setEmailTextFieldConstreints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.heightAnchor.constraint(equalToConstant: 29).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        emailTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 35).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setlogButtonConstraints() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        signInButton.widthAnchor.constraint(equalToConstant: 289).isActive = true
        signInButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 35).isActive = true
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setMessageLabelConstraints() {
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41.89).isActive = true
        messageLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 17.58).isActive = true
        messageLabel.heightAnchor.constraint(equalToConstant: 9.42).isActive = true
        messageLabel.widthAnchor.constraint(equalToConstant: 122.91).isActive = true
    }
    
    private func setLogInButtonConstraints() {
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.leftAnchor.constraint(equalTo: messageLabel.rightAnchor, constant: 8.7).isActive = true
        logInButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 17.43).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 9.57).isActive = true
        logInButton.widthAnchor.constraint(equalToConstant: 31).isActive = true
    }
    
    private func setGoogleImageViewConsttraints() {
        googleImageView.translatesAutoresizingMaskIntoConstraints = false
        googleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 99).isActive = true
        googleImageView.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 74).isActive = true
        googleImageView.widthAnchor.constraint(equalToConstant: 23.83).isActive = true
        googleImageView.heightAnchor.constraint(equalToConstant: 24.22).isActive = true
    }
    
    private func setGoogleButtonConstraints() {
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        googleButton.leftAnchor.constraint(equalTo: googleImageView.rightAnchor, constant: 11.66).isActive = true
        googleButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 82.92).isActive = true
        googleButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        googleButton.heightAnchor.constraint(equalToConstant: 11.48).isActive = true
    }
    
    private func setAppleImageViewConsttraints() {
        appleImageView.translatesAutoresizingMaskIntoConstraints = false
        appleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 99).isActive = true
        appleImageView.topAnchor.constraint(equalTo: googleImageView.bottomAnchor, constant: 38).isActive = true
        appleImageView.widthAnchor.constraint(equalToConstant: 18.38).isActive = true
        appleImageView.heightAnchor.constraint(equalToConstant: 21.87).isActive = true
    }
    
    private func setAppleButtonConstraints() {
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        appleButton.leftAnchor.constraint(equalTo: appleImageView.rightAnchor, constant: 14.11).isActive = true
        appleButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 48.73).isActive = true
        appleButton.widthAnchor.constraint(equalToConstant: 106).isActive = true
        appleButton.heightAnchor.constraint(equalToConstant: 11.48).isActive = true
    }
    
    
}
