//
//  AttractionInfoViewController.swift
//  CAT_AudioTour
//
//  Created by Red_iMac on 2/8/15.
//  Copyright (c) 2015 Red_iMac. All rights reserved.
//

import UIKit

class AttractionInfoViewController: UIViewController {

    var passData = PassData(id: 01, title: "Attraction Title")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var audioscrean = segue.destinationViewController as AudioTourViewController
        // Pass the selected object to the new view controller.
        audioscrean.receiveData = passData
    }

}
