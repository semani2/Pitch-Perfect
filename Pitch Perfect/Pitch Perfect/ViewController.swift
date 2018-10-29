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
    @IBOutlet weak var startRecordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to record"
    }
    
    @IBAction func startRecording(_ sender: Any) {
        print("Start recording clicked")
        recordingLabel.text = "Recording in Progress"
        startRecordingButton.isEnabled = false
        stopRecordingButton.isEnabled = true
    }
    
    @IBAction func stopRecoding(_ sender: Any) {
        print("Stop recording clicked")
        recordingLabel.text = "Tap to Record"
        startRecordingButton.isEnabled = true
        stopRecordingButton.isEnabled = false
    }
    

}

