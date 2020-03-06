//
//  ContainerController.swift
//  Enote
//
//  Created by Apple on 04/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class ContainerController: UIViewController{
    
    var menuController :MenuController!
    var home :UIViewController!
    var isExpanded = false
    var isPressed = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configHome()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool{
        return isExpanded
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
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
        }
    }
    
    func configoption(){
        let controller = OptionEntry()
        present(UINavigationController(rootViewController: controller), animated: false, completion: nil)
    }
    
    
    func animate(Expand:Bool, menuoption: MenuOption?){
        if Expand{
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.home.view.frame.origin.x = self.home.view.frame.width - 80
                }, completion: nil)
        }
        else{
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.home.view.frame.origin.x = 0
            }) { (_) in
                guard let menuoption = menuoption else { return }
                self.selectmenu(menuOption: menuoption)
            }
        }
        
        animateStatusBar()
    }
    
    
    
    func selectmenu(menuOption: MenuOption){
        switch menuOption{
            
        case .Profile:
            print("Show Profile")
        case .Inbox:
            print("Show inbox")
        case .Notifications:
            print("Show notifications")
        case .Settings:
            print("Show settings")
        }
    }
    
    func animateStatusBar(){
        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.setNeedsStatusBarAppearanceUpdate()
        }, completion: nil)
    }
}

extension ContainerController:HomeControllerDelegate{
    func handlenewlistToggle() {
        if !isPressed{
            configoption()
        }
        isPressed = !isPressed
        
    }
    
    func handleMenuToggle(formenuOption menuOption: MenuOption?) {
        if !isExpanded{
            configMenu()
        }
        isExpanded = !isExpanded
        animate(Expand: isExpanded, menuoption: menuOption)
    }
}
