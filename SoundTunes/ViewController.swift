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
    
    private var audioPlayer : AVAudioPlayer! // AVAudioPlayer object
    private let notes = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"] // notes.wav files

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    /*
     This function will take in the index of the notes array, and will test to see if it is a .wav file.
     If it is then we are able to play the sound, and if not we throw an error.
    */
    func playSound(noteNumber: String) {
        
        guard let soundURL = Bundle.main.url(forResource: noteNumber, withExtension: "wav") else { return }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer.play()
        } catch {
            print("There was an error with the audio file, \(error).")
        }
        
    }
    
    
    @IBAction func soundButtonTapped(_ sender: UIButton) {
        playSound(noteNumber: notes[sender.tag - 1])
    }
    

}

