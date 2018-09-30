//
//  UIButtonExtensions.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func setupWithColourFamily(_ colourFamily: AppColourFamily) {
        let colours = determineColourSet(colourFamily)
        applyColourSetToButton((dark: colours.dark, light: colours.light))
    }
    
    private func applyColourSetToButton(_ colour: (dark: UIColor, light: UIColor)) {
        let baseString = self.titleLabel?.text ?? "Uh Oh!"
        let attributableString = baseString.applyColourSetToString(colour: colour)
        self.setAttributedTitle(attributableString, for: .normal)
    }
}
    
