//
//  ViewController.swift
//  OnlineShop
//
//  Created by Никита on 13.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: Constants
    private let titleLabel = TitleLabel(text: Resources.LoginStrings.titleString)
    private let firstNameTextField = AuthTextField(placeholder: Resources.LoginStrings.firstNameTextHolderString)
    private let passwordTextField = AuthTextField(placeholder: Resources.LoginStrings.passwordTextHolderString)
    private let loginButton = LogButton(title: Resources.LoginStrings.loginButtonString)
    private let hideButton = HideButton()
    
    //MARK: Button's actions
    @objc func loginButtonIsPressed(sender: UIButton!) {
        
    }
    @objc func hideButtonIsPressed(sender: UIButton!) {
        
    }
    
    //MARK: LiveCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    //MARK: Methods
    private func configureViewController() {
        view.backgroundColor = Resources.Colors.white
        
        view.addSubview(titleLabel)
        setTitleLabelConstraints()
        
        view.addSubview(firstNameTextField)
        setFirstNameTextFieldConstraints()
        
        configurePasswordTextField()
        view.addSubview(passwordTextField)
        setPasswordTextFieldConstraints()
        
        view.addSubview(loginButton)
        setLoginButtonConstraints()
        addTargets()
    }
    
    private func configurePasswordTextField() {
        let rightView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        hideButton.frame = CGRect(x: -30.2, y: -7.5, width: 15.6, height: 15.6)
        hideButton.imageView?.contentMode = .scaleAspectFit
        rightView.addSubview(hideButton)
        passwordTextField.rightView = rightView
        passwordTextField.rightViewMode = .always
    }
    
    private func addTargets() {
        hideButton.addTarget(self, action: #selector(hideButtonIsPressed), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonIsPressed), for: .touchUpInside)
    }
}

extension LoginViewController {
    
    private func setTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 168.5).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setFirstNameTextFieldConstraints() {
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.heightAnchor.constraint(equalToConstant: 31).isActive = true
        firstNameTextField.widthAnchor.constraint(equalToConstant: 301).isActive = true
        firstNameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 84).isActive = true
        firstNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setPasswordTextFieldConstraints() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant: 31).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 301).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 36.4).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setLoginButtonConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.heightAnchor.constraint(equalToConstant: 47.8).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 300.6).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 103).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
}

