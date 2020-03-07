//
//  OptionEntryTableView.swift
//  Enote
//
//  Created by Apple on 07/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

class OptionEntryTableView: UITableViewCell{
    
    let iconImageView1: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .gray
        return iv
    }()
    
    let iconImageView2: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .gray
        return iv
    }()
    
    let iconImageView3: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .gray
        return iv
    }()
    
    let iconImageView4: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .gray
        return iv
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        addSubview(iconImageView1)
        iconImageView1.translatesAutoresizingMaskIntoConstraints = false
        iconImageView1.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView1.leftAnchor.constraint(equalTo: leftAnchor, constant: 40).isActive = true
        iconImageView1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iconImageView1.widthAnchor.constraint(equalToConstant: 40).isActive = true

        addSubview(iconImageView2)
        iconImageView2.translatesAutoresizingMaskIntoConstraints = false
        iconImageView2.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView2.leftAnchor.constraint(equalTo: iconImageView1.rightAnchor, constant: 40).isActive = true
        iconImageView2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iconImageView2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        addSubview(iconImageView3)
        iconImageView3.translatesAutoresizingMaskIntoConstraints = false
        iconImageView3.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView3.leftAnchor.constraint(equalTo: iconImageView2.rightAnchor, constant: 40).isActive = true
        iconImageView3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iconImageView3.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        addSubview(iconImageView4)
        iconImageView4.translatesAutoresizingMaskIntoConstraints = false
        iconImageView4.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView4.leftAnchor.constraint(equalTo: iconImageView3.rightAnchor, constant: 40).isActive = true
        iconImageView4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        iconImageView4.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
