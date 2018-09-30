//
//  UIColorExtensions.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import Foundation
import UIKit

enum AppColourFamily {
    case green
    case teal
    case blue
    case purple
    case yellow
    case orange
    case red
}

extension UIColor {
    struct FlatColor {
        struct Green {
            static let light = UIColor(netHex: 0x6ABB72)
            static let dark = UIColor(netHex: 0x4DA664)
        }
        
        struct Teal {
            static let light = UIColor(netHex: 0x3ABB9D)
            static let dark = UIColor(netHex: 0x2CA786)
        }
        
        struct Blue {
            static let light = UIColor(netHex: 0x3585C5)
            static let dark = UIColor(netHex: 0x2F6CAD)
        }
        
        struct Smoke {
            static let light = UIColor(netHex: 0x485675)
            static let dark = UIColor(netHex: 0x29334D)
        }
        
        struct Purple {
            static let light = UIColor(netHex: 0x9069B5)
            static let dark = UIColor(netHex: 0x533D7F)
        }
        
        struct Yellow {
            static let light = UIColor(netHex: 0xF2D46F)
            static let dark = UIColor(netHex: 0xF7C23E)
        }
        
        struct Orange {
            static let light = UIColor(netHex: 0xF79E3D)
            static let dark = UIColor(netHex: 0xEE7841)
        }
        
        struct Red {
            static let light = UIColor(netHex: 0xDC5047)
            static let dark = UIColor(netHex: 0xB33234)
        }
        
        struct Brown {
            static let light = UIColor(netHex: 0xA28F85)
            static let dark = UIColor(netHex: 0x75706B)
            
        }
        
        struct Gray {
            static let light = UIColor(netHex: 0xEFEFEF)
            static let dark = UIColor(netHex: 0xD1D5D8)
        }
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}
