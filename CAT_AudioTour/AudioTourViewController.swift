//
//  AudioTourViewController.swift
//  CAT_AudioTour
//
//  Created by Red_iMac on 2/8/15.
//  Copyright (c) 2015 Red_iMac. All rights reserved.
//

import UIKit
import AVFoundation

class AudioTourViewController: UIViewController, AVSpeechSynthesizerDelegate {

    var receiveData : PassData?
    var synthersizer = AVSpeechSynthesizer()
    var utterance = AVSpeechUtterance(string: "")
    
    @IBOutlet weak var audioText: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func speak(sender: UIButton) {
        self.synthersizer.delegate = self
        if !synthersizer.continueSpeaking() {
            utterance = AVSpeechUtterance(string: audioText.text)
            synthersizer.speakUtterance(utterance)
        }
    }
    
    @IBAction func pauseSpeak(sender: UIButton) {
        synthersizer.pauseSpeakingAtBoundary(.Word)
    }
    
    @IBAction func stopSpeak(sender: UIButton) {
        synthersizer.stopSpeakingAtBoundary(.Immediate)
    }

    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance!) {
        let mutableAttributedString = NSMutableAttributedString(string: utterance.speechString)
        mutableAttributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: characterRange)
        audioText.attributedText = mutableAttributedString
    }
    
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, didFinishSpeechUtterance utterance: AVSpeechUtterance!) {
        audioText.attributedText = NSAttributedString(string: utterance.speechString)
    }
    
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, didCancelSpeechUtterance utterance: AVSpeechUtterance!) {
        audioText.attributedText = NSAttributedString(string: utterance.speechString)
    }
    
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, didPauseSpeechUtterance utterance: AVSpeechUtterance!) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Audio Tour"
        synthersizer.speakUtterance(utterance)
        titleLabel.attributedText = NSAttributedString(string: receiveData!.title)
        audioText.attributedText = NSMutableAttributedString(string: "Example text to speech. Step inside magnificent lobbies, corridors, and the underground Pedway system for an in-depth, personal approach to a Chicago architecture walking tour downtown. Available six days a week, the Loop Interior Architecture Walking Tour takes you on a creative route that weaves through buildings and secret short-cuts. 95% of the tour takes places in heated interiors.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
