//
//  ViewController.swift
//  OnlineShop
//
//  Created by Никита on 13.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: Constants
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.LoginStrings.titleString
        label.textColor = Resources.Colors.black
        label.font = UIFont(name: Resources.Fonts.montserratBold, size: 20.3)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let firstNameTextField: UITextField = {
        var textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString( string: Resources.LoginStrings.firstNameTextHolderString,
                                                              attributes: [NSAttributedString.Key.foregroundColor: Resources.Colors.grey,
                                                                           .font: UIFont(name: Resources.Fonts.montserratRegular,
                                                                                         size: 8.7) ?? UIFont.systemFont(ofSize: 8.7, weight:           .regular)])
        textField.textAlignment = .center
        textField.backgroundColor = Resources.Colors.lightGrey
        textField.textColor = Resources.Colors.grey
        textField.layer.cornerRadius = 15.5
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        var textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString( string: Resources.LoginStrings.passwordTextHolderString,
                                                              attributes: [NSAttributedString.Key.foregroundColor: Resources.Colors.grey,
                                                                           .font: UIFont(name: Resources.Fonts.montserratRegular,
                                                                                         size: 8.7) ?? UIFont.systemFont(ofSize: 8.7, weight:           .regular)])
        textField.textAlignment = .center
        textField.backgroundColor = Resources.Colors.lightGrey
        textField.textColor = Resources.Colors.grey
        textField.layer.cornerRadius = 15.5
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    private func configureViewController() {
        view.backgroundColor = Resources.Colors.white
        
        view.addSubview(titleLabel)
        setTitleLabelConstraints()
        
        view.addSubview(firstNameTextField)
        setFirstNameTextFieldConstraints()
        
        view.addSubview(passwordTextField)
        setPasswordTextFieldConstraints()
    }
}

extension LoginViewController {
    
    private func setTitleLabelConstraints() {
        titleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 168.5).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setFirstNameTextFieldConstraints() {
        firstNameTextField.heightAnchor.constraint(equalToConstant: 31).isActive = true
        firstNameTextField.widthAnchor.constraint(equalToConstant: 301).isActive = true
        firstNameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 84).isActive = true
        firstNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
    
    private func setPasswordTextFieldConstraints() {
        passwordTextField.heightAnchor.constraint(equalToConstant: 31).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 301).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 36.4).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
}

