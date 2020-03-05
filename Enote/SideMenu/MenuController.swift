//
//  MenuController.swift
//  Enote
//
//  Created by Apple on 04/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MenuOptionCell"

class MenuController: UIViewController{
    
    var tableview: UITableView!
    var delegate: HomeControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    
    
    func configTableView(){
        tableview = UITableView()
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(MenuOptionCellTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        tableview.backgroundColor = .darkGray
        
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.separatorStyle = .none
        tableview.rowHeight = 80
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    
}

extension MenuController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MenuOptionCellTableViewCell
        
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.icons
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handleMenuToggle(formenuOption: menuOption)
    }
}
