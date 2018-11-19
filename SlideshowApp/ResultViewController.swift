//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by AM16J0 on 2018/11/17.
//  Copyright © 2018年 masaya inamo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var imageview2: UIImageView!
    
    var IMAGE : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageview2.image = IMAGE

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
