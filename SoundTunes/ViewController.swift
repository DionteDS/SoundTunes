//
//  ViewController.swift
//  SoundTunes
//
//  Created by Dionte Silmon on 8/17/19.
//  Copyright © 2019 Dionte Silmon. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var audioPlayer : AVAudioPlayer!
    private let notes = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func playSound(noteNumber: String) {
        
    }
    
    @IBAction func soundButtonTapped(_ sender: UIButton) {
        playSound(noteNumber: notes[sender.tag - 1])
    }
    

}

