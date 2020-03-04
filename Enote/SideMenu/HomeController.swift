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
    var iconimage: UIImage = #imageLiteral(resourceName: "ic_menu_white_3x")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configNavigationBar()
    }
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle()
    }
    func changeIcon(Expanded:Bool=false){
        if Expanded{
            self.iconimage = #imageLiteral(resourceName: "baseline_clear_white_36pt_3x")
            configNavigationBar()
        }
        else{
            self.iconimage = #imageLiteral(resourceName: "ic_menu_white_3x")
            configNavigationBar()
        }
    }
    
    
    
    
    func configNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "App Name"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:iconimage.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
    }
    
}
