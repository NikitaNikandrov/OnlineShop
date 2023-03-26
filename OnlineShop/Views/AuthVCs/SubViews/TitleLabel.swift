//
//  TitleLabel.swift
//  OnlineShop
//
//  Created by Никита on 22.03.2023.
//

import UIKit

final class TitleLabel: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        setUpLabel(text: text)
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpLabel(text: String) {
        self.text = text
        textColor = Resources.Colors.black
        font = UIFont(name: Resources.Fonts.montserratBold, size: 20.3)
        textAlignment = .center
    }
}
