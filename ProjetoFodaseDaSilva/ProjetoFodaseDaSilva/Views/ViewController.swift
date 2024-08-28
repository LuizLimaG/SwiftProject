//
//  ViewController.swift
//  ProjetoFodaseDaSilva
//
//  Created by COTEMIG on 27/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    var statusBarStyle: UIStatusBarStyle = .lightContent

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "BackgroundColor")
        
        self.navigationController?.isNavigationBarHidden = true
        
        
        setupHeader()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }
    
    func setupHeader() {
        let headerComponent = HeaderComponent(frame: .zero)
        headerComponent.translatesAutoresizingMaskIntoConstraints = false
        headerComponent.backgroundColor = UIColor(named: "ComponentsBackgroundColor")
        
        let screen = UIScreen.main.bounds
        
        self.view.addSubview(headerComponent)
        
        NSLayoutConstraint.activate([
            headerComponent.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            headerComponent.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            headerComponent.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            headerComponent.heightAnchor.constraint(equalToConstant: screen.height / 8 )
        ])
    }


}

