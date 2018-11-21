//
//  ViewController.swift
//  SlideshowApp
//
//  Created by AM16J0 on 2018/11/12.
//  Copyright © 2018年 masaya inamo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var timer: Timer!
    var dispimageNo = 0
    let photo:[String] = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10"]
    
    
    @IBOutlet weak var next1: UIButton!
    @IBOutlet weak var next2: UIButton!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func next(_ sender: Any) {
        
        dispimageNo += 1
        
        displayimage()
    }
    
    @IBAction func prev(_ sender: Any) {
        
        dispimageNo -= 1
        
        displayimage()
    }
    
    @IBAction func slide(_ sender: Any) {
        
        if timer == nil{
            
            timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(start(_:)), userInfo: nil, repeats: true)
        
            next1.isEnabled = false
            next2.isEnabled = false
            button.setTitle("停止", for:.normal)
        }
        
        else if timer != nil{
            
            timer.invalidate()
            timer = nil
            next1.isEnabled = true
            next2.isEnabled = true
            button.setTitle("再生", for:.normal)
        }
    }
    
    @objc func start(_ timer: Timer){
        
        dispimageNo += 1
        displayimage()
    }
    
    func displayimage(){
        
        if dispimageNo > 9{
            dispimageNo = 0
        }
        
        if dispimageNo < 0{
            dispimageNo = 9
        }
        
        let name = photo[dispimageNo]
        let image = UIImage(named:name)
        self.imageView.image = image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
            resultViewController.IMAGE = self.imageView.image
        
        if timer != nil{
            timer.invalidate()
            timer = nil
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let image = UIImage(named:"image1")
        self.imageView.image = image
        
        button.setTitle("再生", for:.normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        button.setTitle("再生", for:.normal)
        next1.isEnabled = true
        next2.isEnabled = true
        
    }
}

