//
//  ViewController.swift
//  The Light Rainbow
//
//  Created by Егор Астахов on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let maxColors = 7
    var currentNumberOfColor = 0

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


    @IBAction func colorButton() {
        
        currentNumberOfColor += 1
        
        switch currentNumberOfColor {
        case 1:
            view.backgroundColor = .orange
        case 2:
            view.backgroundColor = .yellow
        case 3:
            view.backgroundColor = .green
        case 4:
            view.backgroundColor = .cyan
        case 5:
            view.backgroundColor = .blue
        case 6:
            view.backgroundColor = .purple
        default:
            view.backgroundColor = .red
        }
        
        if currentNumberOfColor == 7 {
            currentNumberOfColor = 0
        }
        
    }
}

