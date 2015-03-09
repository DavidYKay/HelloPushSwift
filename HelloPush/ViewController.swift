//
//  ViewController.swift
//  HelloPush
//
//  Created by David Young-chan Kay on 3/9/15.
//  Copyright (c) 2015 David Young-chan Kay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var soundMaker: SoundMaker?
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var pushLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        soundMaker = SoundMaker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func soundWasPressed(sender: UIButton) {
        soundMaker!.play()
    }

  
}

