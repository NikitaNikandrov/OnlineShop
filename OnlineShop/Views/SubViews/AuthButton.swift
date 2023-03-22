//
//  AuthButton.swift
//  OnlineShop
//
//  Created by Никита on 22.03.2023.
//

import UIKit

final class AuthButton: UIButton {
    init(title: String, image: UIColor, fontSize: CGFloat) {
        super.init(frame: .zero)
        setUpButton(title: title, color: image, fontSize: fontSize)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpButton(title: String, color: UIColor, fontSize: CGFloat) {
        backgroundColor = Resources.Colors.white
        let buttonLabelAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: color,
                                                                    .font: UIFont(name: Resources.Fonts.montserratRegular,
                                                                                  size: fontSize) ?? UIFont.systemFont(ofSize: 10, weight:           .regular)]
        let attributeString = NSMutableAttributedString(string: title, attributes: buttonLabelAttributes)
        setAttributedTitle(attributeString, for: .normal)
    }
}
