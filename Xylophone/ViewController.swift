//
//  ViewController.swift
//  Xylophone
//
//  Created by Fernando Guerrero G on 05/08/21.
//

import UIKit
import AVFoundation /* Work with audiovisual assets, control device cameras, process audio, and configure system audio interactions */

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if let keyButton = sender.titleLabel?.text {
            sender.alpha = 0.5
            playSound(soundName: keyButton)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.alpha = 1
            }
        }
    }
    
    private func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
}

