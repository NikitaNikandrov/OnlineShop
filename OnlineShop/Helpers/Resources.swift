//
//  Resources.swift
//  OnlineShop
//
//  Created by Никита on 13.03.2023.
//

import UIKit

enum Resources {
    
    enum Colors {
        static let black = UIColor(hexString: "161826")
        static let white = UIColor(hexString: "FAF9FF")
        static let lightGrey = UIColor(hexString: "E8E8E8")
        static let grey = UIColor(hexString: "7B7B7B")
        static let darkGrey = UIColor(hexString: "A2A2A2")
        static let purple = UIColor(hexString: "4E55D7")
    }
    
    enum TabBarColors {
        static let selectedItemColor = UIColor(hexString: "161826")
        static let unSelectedItemColor = UIColor(hexString: "909090")
    }
    
    enum TabBarIcons {
        static let mainScreenIcon = UIImage(named: "home.png")
        static let favoritsIcon = UIImage(named: "fav.png")
        static let basketIcon = UIImage(named: "basket.png")
        static let messageIcon = UIImage(named: "message.png")
        static let profileIcon = UIImage(named: "user.png")
    }
    
    enum Fonts {
        static let montserratBold = "Montserrat-Bold"
        static let montserratRegular = "Montserrat-Regular"
    }
    
    enum LoginStrings {
        static let titleString = "Welcome back"
        static let firstNameTextHolderString = "First name"
        static let passwordTextHolderString = "Password"
        static let loginButtonString = "Login"
    }
    
    enum SignInStrings {
        static let titleString = "Sign in"
        static let firstNameTextHolderString = "First name"
        static let lastNameTextHolderString = "Last name"
        static let emailTextHolderString = "Email"
        static let sigInButtonString = "Sign in"
        static let logInButtonString = "Log in"
        static let messageString = "Already have an account?"
        static let googleString = "Sign in with Google"
        static let appleString = "Sign in with Apple"
    }
}
