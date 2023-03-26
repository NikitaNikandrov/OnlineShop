//
//  BaseViewController.swift
//  OnlineShop
//
//  Created by Никита on 26.03.2023.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = Resources.Colors.white
    }
}
