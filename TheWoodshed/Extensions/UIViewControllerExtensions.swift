//
//  UIViewControllerExtensions.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func selectRandomAvailableColour(_ unavailableColours: [AppColourFamily] = []) -> AppColourFamily {
        
        let randomIndex = Int.random(in: 0..<GlobalColourOptions.count)
        var newRandomColour = GlobalColourOptions[randomIndex]
        
        if unavailableColours.contains(newRandomColour) {
            newRandomColour = selectRandomAvailableColour(unavailableColours)
        }
        
        return newRandomColour
    }
}
