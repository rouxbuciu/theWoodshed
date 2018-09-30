//
//  MenuVC.swift
//  TheWoodshed
//
//  Created by roux g. buciu on 2018-09-30.
//  Copyright © 2018 roux g. buciu. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var practiceButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!
    
    
    // MARK: - Variables
    
    let colourOptions: [AppColourFamily] = [.green, .blue, .purple, .orange, .red, .teal, .yellow]
    
    var availableColours: [AppColourFamily]!
    var buttons: [UIButton]!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.view.backgroundColor = UIColor.FlatColor.Smoke.light
        buttons = [practiceButton, helpButton, settingsButton, aboutButton]
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        randomizeColourScheme()
    }
    
    
    // MARK: - Helper functions
    
    private func randomizeColourScheme() {
        resetColourOptions()
        for element in buttons {
            let newColour: AppColourFamily = selectRandomAvailableColour()
            element.setupWithColourFamily(newColour)
        }
    }
    
    private func resetColourOptions() {
        availableColours = nil
        availableColours = colourOptions
    }
    
    private func selectRandomAvailableColour() -> AppColourFamily {
        let randomIndex = Int.random(in: 0..<availableColours.count)
        let randomColour = availableColours[randomIndex]
        
        availableColours.remove(at: randomIndex)
        
        return randomColour
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
