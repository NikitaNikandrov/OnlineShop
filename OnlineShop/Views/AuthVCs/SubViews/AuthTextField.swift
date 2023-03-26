//
//  AuthTextField.swift
//  OnlineShop
//
//  Created by Никита on 15.03.2023.
//

import UIKit

final class AuthTextField: UITextField {
    init(placeholder: String) {
        super.init(frame: .zero)
        setUpAuthTextField(placeholder: placeholder)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpAuthTextField(placeholder: String) {
        attributedPlaceholder = NSAttributedString( string: placeholder,
                                                         attributes: [NSAttributedString.Key.foregroundColor: Resources.Colors.grey,
                                                                      .font: UIFont(name: Resources.Fonts.montserratRegular,
                                                                                    size: 8.7) ?? UIFont.systemFont(ofSize: 8.7,
                                                                                                                    weight: .regular)])
        textAlignment = .center
        backgroundColor = Resources.Colors.lightGrey
        textColor = Resources.Colors.grey
        layer.cornerRadius = 15.5
    }
}
