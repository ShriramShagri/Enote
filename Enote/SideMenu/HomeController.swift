//
//  HomeController.swift
//  Enote
//
//  Created by Apple on 04/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    
    var delegate: HomeControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configNavigationBar()
    }
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle()
    }
    func configNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "App Name"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
    }
    
}
