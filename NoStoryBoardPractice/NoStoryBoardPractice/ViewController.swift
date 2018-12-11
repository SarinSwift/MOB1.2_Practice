//
//  ViewController.swift
//  NoStoryBoardPractice
//
//  Created by Sarin Swift on 12/10/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let welcomeLabel: UITextView = {
        let textView = UITextView()
        textView.text = "Welcome to my pracitce\nWe will be coding the views programmatically!"
        textView.backgroundColor = nil
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isSelectable = false
        textView.textColor = .white
        return textView
    }()
    
    private let startButton: UIButton = {
        let buttonStart = UIButton()
        buttonStart.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        buttonStart.layer.cornerRadius = 8
        buttonStart.setTitle("Start", for: .normal)
        buttonStart.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        buttonStart.addTarget(self, action: #selector(loadNextView(_:)), for: .touchUpInside)
        return buttonStart
    }()
    
    @objc func loadNextView(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }

    func setUpView() {
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        view.addSubview(welcomeLabel)
        view.addSubview(startButton)
    }

}

