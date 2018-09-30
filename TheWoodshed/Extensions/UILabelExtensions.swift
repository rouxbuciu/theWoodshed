//
//  UILabelExtensions.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func setupWithColourFamily(_ colourFamily: AppColourFamily) {
        let colours = determineColourSet(colourFamily)
        applyColourSetToLabel(colours)
    }
    
    private func applyColourSetToLabel(_ colour: (dark: UIColor, light: UIColor)) {
        let baseString = self.text ?? "Uh Oh!"
        let attributableString = baseString.applyColourSetToString(colour: colour)
        self.attributedText = attributableString
    }
    
}
