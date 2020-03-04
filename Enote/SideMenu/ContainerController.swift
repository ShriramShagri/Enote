//
//  ContainerController.swift
//  Enote
//
//  Created by Apple on 04/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class ContainerController: UIViewController{
    
    var menuController :UIViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configHome()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    func configHome(){
        let homecontroller = HomeController()
        homecontroller.delegate=self
        let home = UINavigationController(rootViewController: homecontroller)
        
        view.addSubview(home.view)
        addChild(home)
        home.didMove(toParent: self)
        
    }
    
    func configMenu(){
        if menuController==nil{
            menuController=MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Success")
        }
    }
}

extension ContainerController:HomeControllerDelegate{
    func handleMenuToggle() {
        configMenu()
    }
    
    
}
