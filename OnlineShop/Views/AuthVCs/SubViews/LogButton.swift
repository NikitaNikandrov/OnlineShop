//
//  LogButton.swift
//  OnlineShop
//
//  Created by Никита on 22.03.2023.
//

import UIKit

final class LogButton: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        setUpButton(title: title)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpButton(title: String) {
        backgroundColor = Resources.Colors.purple
        let buttonLabelAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: Resources.Colors.white,
                                                                    .font: UIFont(name: Resources.Fonts.montserratBold,
                                                                                  size: 14.4) ?? UIFont.systemFont(ofSize: 14.4, weight:           .regular)]
        let attributeString = NSMutableAttributedString(string: title, attributes: buttonLabelAttributes)
        setAttributedTitle(attributeString, for: .normal)
        layer.cornerRadius = 15
    }
}
