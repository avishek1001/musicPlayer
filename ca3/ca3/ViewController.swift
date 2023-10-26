//
//  ViewController.swift
//  ca3
//
//  Created by Admin on 26/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    var vlc: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        play.layer.cornerRadius = 15
        
    }
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var play: UIButton!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text1.endEditing(true)
        return false
    }
    
    
    @IBAction func playAction(_ sender: Any) {
        
        if text1.text == "DEVOTIONAL" {
            
            do{
                let song_url = Bundle.main.path(forResource: "HanumanChalisa", ofType: "mp3")
                try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!) as! URL)
                vlc.play()
            }
            catch{}
            view.backgroundColor = UIColor(patternImage: UIImage(named: "hanuman")!)
            
        }
        else if text1.text == "PATRIOTIC" {
            
            do{
                let song_url = Bundle.main.path(forResource: "Sandese", ofType: "mp3")
                try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!) as! URL)
                vlc.play()
            }
            catch{}
            view.backgroundColor = UIColor(patternImage: UIImage(named: "tiranga")!)
            
        }
            
    }
    
}

