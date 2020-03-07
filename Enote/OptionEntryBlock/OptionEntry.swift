//
//  OptionEntry.swift
//  Enote
//
//  Created by Apple on 06/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit
private let reuseIdentifier = "MenuOptionCell"


class OptionEntry: UIViewController{
    
    var tableview: UITableView!
    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configNavigationBar()
    }
    
    @objc func goback(){
        let controller = ContainerController()
        present(controller, animated: false, completion: nil)
    }
    
    func configTableView(){
        tableview = UITableView()
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(OptionEntryTableView.self, forCellReuseIdentifier: reuseIdentifier)
        
        tableview.backgroundColor = .white
        
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.separatorStyle = .none
        tableview.rowHeight = 60
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    

    
    
    
    
    func configNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Selector"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "plus_icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(goback))
        configTableView()
        
    }
}

extension OptionEntry: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! OptionEntryTableView
        
        let menuOption1 = myOptions(rawValue: indexPath.row)
        cell.iconImageView1.image = menuOption1?.icons
        let menuOption2 = myOptions(rawValue: indexPath.row)
        cell.iconImageView2.image = menuOption2?.icons
        let menuOption3 = myOptions(rawValue: indexPath.row)
        cell.iconImageView3.image = menuOption3?.icons
        let menuOption4 = myOptions(rawValue: indexPath.row)
        cell.iconImageView4.image = menuOption4?.icons
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handleMenuToggle(formenuOption: menuOption)
    }
}


