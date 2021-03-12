//
//  TodoViewController.swift
//  Gesture Recognizer
//
//  Created by fred on 09/02/2021.
//

import UIKit

class TodoViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitle("Réussi 👍🏼 ...retour", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(backView), for: .touchUpInside)
    }
    
    @objc func backView() {
        dismiss(animated: true, completion: nil)
    }
}
