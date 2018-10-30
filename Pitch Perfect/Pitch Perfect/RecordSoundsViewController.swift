//
//  RecordSoundsViewController
//  Pitch Perfect
//
//  Created by Sai Emani on 10/29/18.
//  Copyright © 2018 Sai Emani. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var startRecordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
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
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,
                                                          .userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
//        let session = AVAudioSession.sharedInstance()
//        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.spokenAudio, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
        try! AVAudioSession.sharedInstance().setCategory(.playAndRecord, mode: .default, options: [])
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecoding(_ sender: Any) {
        print("Stop recording clicked")
        recordingLabel.text = "Tap to Record"
        startRecordingButton.isEnabled = true
        stopRecordingButton.isEnabled = false
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        print("Finished recording")
    }

    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        print(error?.localizedDescription ?? "No error")
    }
    

}

