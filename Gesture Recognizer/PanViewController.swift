//
//  PanViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 08/02/2021.
//

import UIKit

class PanViewController: UIViewController {
    
    //Storyboard, add PanGestureRecognizer on object
    //UserInteractionEnabled is checked for this object (attribut inspector)
    //@IBOutlet object
    //@IBAction from Pan Gesture Recognizer
    
    @IBOutlet weak var textFragment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func panTexte(_ sender: UIPanGestureRecognizer) {
        let position = sender.location(in: view)
        textFragment.center = position
    }
    
    

}
