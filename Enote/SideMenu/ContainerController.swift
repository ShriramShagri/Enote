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
    var home :UIViewController!
    var isExpanded = false
    var changeicon :HomeController?
    
    
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
        home = UINavigationController(rootViewController: homecontroller)
        
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
        }
    }
    
    func showMenuController(Expand:Bool){
        if Expand{
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.home.view.frame.origin.x = self.home.view.frame.width - 80
                }, completion: nil)
        }
        else{
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.home.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
}

extension ContainerController:HomeControllerDelegate{
    func handleMenuToggle() {
        if !isExpanded{
            configMenu()
        }
        isExpanded = !isExpanded
        changeicon?.changeIcon(Expanded: isExpanded)
        showMenuController(Expand: isExpanded)
    }
    
    
}
