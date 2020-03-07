//
//  myoptions.swift
//  Enote
//
//  Created by Apple on 07/03/20.
//  Copyright © 2020 is. All rights reserved.
//

import UIKit

enum myOptions: Int , CustomStringConvertible{
    case Icon1
    case Icon2
    case Icon3
    case Icon4
    
    var description: String{
        switch self{
            
        case .Icon1:
            return "Icon1"
        case .Icon2:
            return "Icon2"
        case .Icon3:
            return "Icon3"
        case .Icon4:
            return "Icon4"
        }
    }
    
    var icons: UIImage{
        switch self{
            
        case .Icon1:
            return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Icon2:
            return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Icon3:
            return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Icon4:
            return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        }
    }
    
}
