//
//  ViewController.swift
//  TrialUI
//
//  Created by shunsukeshimada on 2015/10/31.
//  Copyright © 2015年 shunsukeshimada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView?
    
    @IBAction func tapButton(sender: AnyObject) {
        if let photo = self.imageView {
            if photo.alpha < 0.5 {
                photo.alpha = 0.0
            } else {
                photo.alpha = 1.0
            }
        }
    }
    
    @IBAction func moveSlider(sender: AnyObject) {
        guard let photo = self.imageView else {
            return
        }
        let slider = sender as! UISlider
        photo.alpha = CGFloat(slider.value)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

