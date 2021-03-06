//
//  LongPressViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 08/02/2021.
//

import UIKit

class LongPressViewController: UIViewController {
    
    //Storyboard, add LongPressGestureRecognizer on object
    //UserInteractionEnabled is checked for this object (attribut inspector)
    //@IBOutlet object
    //@IBAction from Long Press Gesture Recognizer
    
    @IBOutlet weak var lightBulb: UIImageView!
    @IBOutlet weak var blackView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        lightBulb.isHidden = false
    }
    
    @IBAction func lightOff(_ sender: UILongPressGestureRecognizer) {
        if sender.state == UIGestureRecognizer.State.began {
            lightBulb.isHidden = true
        }
       
    }
    
    

}
