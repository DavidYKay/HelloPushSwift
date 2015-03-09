//
//  SoundMaker.swift
//  HelloPush
//
//  Created by David Young-chan Kay on 3/9/15.
//  Copyright (c) 2015 David Young-chan Kay. All rights reserved.
//

import Foundation

import AVFoundation
    
public class SoundMaker {

  var audioPlayer: AVAudioPlayer

    init() {
        var coinSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("ping", ofType: "wav")!)
        audioPlayer = AVAudioPlayer(contentsOfURL: coinSound, error: nil)
        audioPlayer.prepareToPlay()
    }

    public func play() {
        println("play sound")
       audioPlayer.play()
    }
}

