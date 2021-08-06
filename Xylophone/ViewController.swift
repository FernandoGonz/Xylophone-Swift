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
        
        let titleBlutton = sender.titleLabel?.text
        
        playSound(keyNote: titleBlutton!)
    }
    
    func playSound(keyNote: String) {
        /* Bundle is a representation of the code and resources stored in a bundle directory on disk */
        
        let url = Bundle.main.url(forResource: keyNote, withExtension: "wav")
        
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player?.play()
        
    }
    
}

