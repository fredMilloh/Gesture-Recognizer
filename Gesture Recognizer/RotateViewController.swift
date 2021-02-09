//
//  RotateViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 09/02/2021.
//

import UIKit

class RotateViewController: UIViewController {
    
    //Storyboard, add RotateGestureRecognizer on object
    //UserInteractionEnabled is checked for this object (attribut inspector)
    //@IBAction from Pan Gesture Recognizer
    
    @IBOutlet weak var planeteView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rotateAction(_ sender: UIRotationGestureRecognizer) {
        if let rotateView = sender.view {
            rotateView.transform = rotateView.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }
    
    //On peut associer le zoom
    @IBAction func pinchAction(_ sender: UIPinchGestureRecognizer) {
        guard let pinchView = sender.view else { return }
        pinchView.transform = pinchView.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
    }
    
    

}
