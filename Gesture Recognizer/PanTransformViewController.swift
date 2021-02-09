//
//  ConcatenatingViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 09/02/2021.
//

import UIKit

class PanTransformViewController: UIViewController {
    
    //En CODE : Ajout du geste Pan à la vue purple
    //Définition des actions en fonction de l'état du geste
    
    @IBOutlet weak var purpleView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Initialisation du geste
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(dragView(_:)))
        //ajout du geste à la vue
        purpleView.addGestureRecognizer(panGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        purpleView.backgroundColor = .purple
        
    }
    
    //Action en fonction de l'état du geste
    @objc func dragView(_ sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .began, .changed:
            moveViewWith(gesture: sender)
        case .ended, .cancelled:
            purpleView.backgroundColor = .lightGray
        default:
            break
        }
    }
    
    //fonction définissant le déplacement par rapport au geste, et associant une rotation de l'objet
    func moveViewWith(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: purpleView)
        let translationMove = CGAffineTransform(translationX: translation.x, y: translation.y)
        
        let screenWidth = UIScreen.main.bounds.width
        let translationPercent = translation.x/(screenWidth / 2)
        let rotationAngle = (CGFloat.pi / 3) * translationPercent
        let rotationTransform = CGAffineTransform(rotationAngle: rotationAngle)
        
        let transform = translationMove.concatenating(rotationTransform)
        purpleView.transform = transform
    }
    
    
   

}
