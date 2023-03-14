//
//  HideButton.swift
//  OnlineShop
//
//  Created by Никита on 14.03.2023.
//

import UIKit

final class HideButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHideBotton()
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHideBotton() {
        setImage(UIImage(named: "hide.png"), for: .normal)
        tintColor = Resources.Colors.darkGrey
    }
}
