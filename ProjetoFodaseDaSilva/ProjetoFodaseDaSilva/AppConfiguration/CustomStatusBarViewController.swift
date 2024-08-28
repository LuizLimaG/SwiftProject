//
//  CustomStatusBarViewController.swift
//  ProjetoFodaseDaSilva
//
//  Created by COTEMIG on 27/08/24.
//

import UIKit

class CustomStatusBarViewController: UINavigationController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }

}
