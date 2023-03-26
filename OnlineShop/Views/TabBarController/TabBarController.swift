//
//  TabBarController.swift
//  OnlineShop
//
//  Created by Никита on 26.03.2023.
//

import UIKit

enum Tabs: Int {
    case mainScreen
    case favorits
    case basket
    case messages
    case profile
}

final class TabBarController: UITabBarController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setupTabBar()
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTabBar() {
        tabBar.tintColor = Resources.TabBarColors.selectedItemColor
        tabBar.unselectedItemTintColor = Resources.TabBarColors.unSelectedItemColor
        
        tabBar.layer.backgroundColor = Resources.Colors.white.cgColor
        tabBar.layer.cornerRadius = 20
        tabBar.layer.masksToBounds = true
        tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        let mainScreenViewController = MainScreenViewController()
        let favoritsViewController = FavoritsViewController()
        let basketViewController = BasketViewController()
        let messageViewController = MessageViewController()
        let profileViewController = ProfileViewController()
        
        let mainScreenNavigationController = NavigationController(rootViewController: mainScreenViewController)
        let favoritsNavigationController = NavigationController(rootViewController: favoritsViewController)
        let basketNavigationController = NavigationController(rootViewController: basketViewController)
        let messageNavigationController = NavigationController(rootViewController: messageViewController)
        let profileNavigationController = NavigationController(rootViewController: profileViewController)
        
        mainScreenViewController.tabBarItem = UITabBarItem(title:"",
                                                           image: Resources.TabBarIcons.mainScreenIcon,
                                                           tag: Tabs.mainScreen.rawValue)
        favoritsViewController.tabBarItem = UITabBarItem(title:"",
                                                         image: Resources.TabBarIcons.favoritsIcon,
                                                         tag: Tabs.favorits.rawValue)
        basketViewController.tabBarItem = UITabBarItem(title:"",
                                                       image: Resources.TabBarIcons.basketIcon,
                                                       tag: Tabs.basket.rawValue)
        messageViewController.tabBarItem = UITabBarItem(title:"",
                                                        image: Resources.TabBarIcons.messageIcon,
                                                        tag: Tabs.messages.rawValue)
        profileViewController.tabBarItem = UITabBarItem(title:"",
                                                        image: Resources.TabBarIcons.profileIcon,
                                                        tag: Tabs.profile.rawValue)
        
        
        setViewControllers([mainScreenNavigationController,
                            favoritsNavigationController,
                            basketNavigationController,
                            messageNavigationController,
                            profileNavigationController], animated: false)
    }
}
