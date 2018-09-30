//
//  UIStringExtensions.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    func applyColourSetToString(colour: (dark: UIColor, light: UIColor)) -> NSMutableAttributedString {
        let attributableString = NSMutableAttributedString(string: self)
        attributableString.addAttribute(NSAttributedString.Key.foregroundColor,
                                        value: colour.dark,
                                        range: NSRange(location: 0, length: 1))
        attributableString.addAttribute(NSAttributedString.Key.foregroundColor,
                                        value: colour.light,
                                        range: NSRange(location: 1, length: self.count-1))
        
        return attributableString
    }
    
}
