//
//  UIViewExtensions.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func determineColourSet(_ colourFamily: AppColourFamily) -> (dark: UIColor, light: UIColor) {
        var darkColour: UIColor!
        var lightColour: UIColor!
        
        if colourFamily == .green {
            darkColour = UIColor.FlatColor.Green.dark
            lightColour = UIColor.FlatColor.Green.light
        } else if colourFamily == .blue {
            darkColour = UIColor.FlatColor.Blue.dark
            lightColour = UIColor.FlatColor.Blue.light
        }  else if colourFamily == .purple {
            darkColour = UIColor.FlatColor.Purple.dark
            lightColour = UIColor.FlatColor.Purple.light
        } else if colourFamily == .teal {
            darkColour = UIColor.FlatColor.Teal.dark
            lightColour = UIColor.FlatColor.Teal.light
        } else if colourFamily == .yellow {
            darkColour = UIColor.FlatColor.Yellow.dark
            lightColour = UIColor.FlatColor.Yellow.light
        } else if colourFamily == .orange {
            darkColour = UIColor.FlatColor.Orange.dark
            lightColour = UIColor.FlatColor.Orange.light
        } else if colourFamily == .red {
            darkColour = UIColor.FlatColor.Red.dark
            lightColour = UIColor.FlatColor.Red.light
        }
        
        return (dark: darkColour, light: lightColour)
    }
}
