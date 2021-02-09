//
//  PinchViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 09/02/2021.
//

import UIKit

class PinchViewController: UIViewController {
    
    // en Code
    
    let imageView = UIImageView()
    let pinchGesture = UIPinchGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialise la vue
        imageView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        imageView.image = #imageLiteral(resourceName: "TerrePlanete")
        self.view.addSubview(imageView)
        
        //Position de imageView dans view
        imageView.center = view.center
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //Autorise les interactions avec l'utilisateur
        imageView.isUserInteractionEnabled = true
        
        //Definit la cible et l'action du geste, et on l'ajoute à imageView
        pinchGesture.addTarget(self, action: #selector(pinchAction))
        imageView.addGestureRecognizer(pinchGesture)
    }
    
    // ATTENTION SIMULATEUR APPUYER SUR OPTION
    
    //fonction pour l'action
    @objc func pinchAction() {
        guard let gestureView = pinchGesture.view else { return }
        gestureView.transform = gestureView.transform.scaledBy(x: pinchGesture.scale, y: pinchGesture.scale)
        pinchGesture.scale = 1
    }
    

}
