//
//  SignInViewController.swift
//  OnlineShop
//
//  Created by Никита on 15.03.2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    private let titleLabel = TitleLabel(text: Resources.SignInStrings.titleString)
    private let firstNameTextField = AuthTextField(placeholder: Resources.SignInStrings.firstNameTextHolderString)
    private let lastNameTextField = AuthTextField(placeholder: Resources.SignInStrings.lastNameTextHolderString)
    private let emailTextField = AuthTextField(placeholder: Resources.SignInStrings.emailTextHolderString)
    private let logButton = LogButton(title: Resources.SignInStrings.sigInButtonString)
    
    @objc func logButtonIsPressed(sender: UIButton!) {
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
        
        view.addSubview(logButton)
        setlogButtonConstraints()
        
        addTargets()
    }
    
    private func addTargets() {
        logButton.addTarget(self, action: #selector(logButtonIsPressed), for: .touchUpInside)
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
        logButton.translatesAutoresizingMaskIntoConstraints = false
        logButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        logButton.widthAnchor.constraint(equalToConstant: 289).isActive = true
        logButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 35).isActive = true
        logButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
}
