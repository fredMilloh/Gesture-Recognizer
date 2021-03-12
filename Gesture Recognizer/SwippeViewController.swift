//
//  SwippeViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 08/02/2021.
//

import UIKit

class SwippeViewController: UIViewController {
    
    //Storyboard, add SwippeGestureRecognizer on object
    //UserInteractionEnabled is checked for this object (attribut inspector)
    //@IBOutlet object
    //@IBAction from Swippe Gesture Recognizer
    
    @IBOutlet weak var maskView: UIView!
    @IBOutlet weak var theCafeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        maskView.center = CGPoint(x: view.center.x, y: view.center.y)
        theCafeLabel.isHidden = false
    }
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        if let maskView = sender.view {
            maskView.center = CGPoint(x: 500, y: maskView.center.y)
            theCafeLabel.isHidden = true
        }
    }
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        if let maskView = sender.view {
            maskView.center = CGPoint(x: -100, y: maskView.center.y)
            theCafeLabel.isHidden = true
        }
    }
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        if let maskView = sender.view {
            maskView.center = CGPoint(x: maskView.center.x, y: -300)
            theCafeLabel.isHidden = true
        }
    }
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        if let maskView = sender.view {
            maskView.center = CGPoint(x: maskView.center.x, y: -100)
            theCafeLabel.isHidden = true
        }
    }
    
    // on peut aussi relier les 4 swippe Gesture sur 1 @IBAction
    // et se servir d'un switch sender.direction et case .up/.down ...
    
    @IBAction func screenEdgeLeft(_ sender: UIScreenEdgePanGestureRecognizer) {
        if sender.state == .recognized {
            print("geste reconnu")
            let vc = TodoViewController()
            vc.modalTransitionStyle = .flipHorizontal
            present(vc, animated: true, completion: nil)
        }
    }
    

}
