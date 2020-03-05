//
//  MenuOptions.swift
//  Enote
//
//  Created by Apple on 05/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible{
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String{
        switch self {
            
        case .Profile:
            return "Profile"
        case .Inbox:
            return "Inbox"
        case .Notifications:
            return "Notifications"
        case .Settings:
            return "Settings"
        }
    }
    
    var icons: UIImage {
        switch self {
            
        case .Profile:
            return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Inbox:
            return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        case .Notifications:
            return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        case .Settings:
            return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        }
    }
}
