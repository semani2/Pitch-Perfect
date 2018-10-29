//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Sai Emani on 10/29/18.
//  Copyright © 2018 Sai Emani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load")
    }
    
    @IBAction func startRecording(_ sender: Any) {
        print("Start recording clicked")
        recordingLabel.text = "Recording started.. Click Stop Recording to stop."
    }
    
    @IBAction func stopRecoding(_ sender: Any) {
        print("Stop recording clicked")
        recordingLabel.text = "Recording stoped.. Click start Recording to start."
    }
    

}

