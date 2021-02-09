//
//  AccueilViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 09/02/2021.
//

import UIKit

class AccueilViewController: UIViewController {
    
    let accueilButton : UIButton = {
        let accueilButton = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 200))
        accueilButton.setTitle("A Bientôt", for: .normal)
        accueilButton.setTitleColor(.white, for: .normal)
        accueilButton.backgroundColor = .systemRed
        return accueilButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(accueilButton)
        accueilButton.center = view.center
        //accueilButton.addTarget(self, action: #selector(welcome), for: .touchUpInside)
    }
    /*
    @objc func welcome() {
        let vc = PanViewController()
        //vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .coverVertical
        present(vc, animated: true, completion: nil)
    }

    */

}
