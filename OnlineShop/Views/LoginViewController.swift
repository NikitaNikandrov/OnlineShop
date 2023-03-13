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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    private func configureViewController() {
        view.backgroundColor = Resources.Colors.white
        
        view.addSubview(titleLabel)
        setTitleLabelConstraints()
    }
}

extension LoginViewController {
   
    private func setTitleLabelConstraints(){
        titleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 168.5).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
}

