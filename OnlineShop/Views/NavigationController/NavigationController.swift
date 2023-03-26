//
//  NavigationController.swift
//  OnlineShop
//
//  Created by Никита on 26.03.2023.
//

import UIKit

final class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavBar()
    }
    
    func setUpNavBar(){
        view.backgroundColor = Resources.Colors.white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}
