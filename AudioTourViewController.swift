//
//  AudioTourViewController.swift
//  CAT_AudioTour
//
//  Created by Red_iMac on 2/8/15.
//  Copyright (c) 2015 Red_iMac. All rights reserved.
//

import UIKit

class AudioTourViewController: UIViewController {

    var receiveData : PassData?
    
    @IBOutlet weak var audioText: UITextView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = receiveData?.title
        // Do any additional setup after loading the view.
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
