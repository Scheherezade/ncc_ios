//
//  PhotoShowViewController.swift
//  PhotoShow
//
//  Created by shunsukeshimada on 2015/10/31.
//  Copyright © 2015年 shunsukeshimada. All rights reserved.
//

import UIKit

class PhotoShowViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func tapButton(sender: UIButton) {
        let buttonName = sender.titleLabel?.text
        print("Button Name = \(buttonName)")
        let imagePath = NSBundle.mainBundle().pathForResource(buttonName, ofType: "jpg")
        let photoImage = UIImage(contentsOfFile: imagePath!)
        imageView.image = photoImage
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
