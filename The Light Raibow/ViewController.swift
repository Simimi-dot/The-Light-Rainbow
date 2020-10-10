//
//  ViewController.swift
//  The Light Raibow
//
//  Created by Егор Астахов on 10.10.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let colorMax = 6
    var colorMin = 0
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
        toggleTorch(on: true)
    }
    
    fileprivate func UpdateUI() {
        switch colorMin {
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
    }
    
    @IBAction func pushButton() {
        colorMin += 1
        if colorMax < colorMin {
            colorMin = 0
        }
        UpdateUI()
        toggleTorch(on: true)
        
    }
    
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }

        if device.hasTorch {
            do {
                try device.lockForConfiguration()

                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }

                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
   
    
}
    


    

