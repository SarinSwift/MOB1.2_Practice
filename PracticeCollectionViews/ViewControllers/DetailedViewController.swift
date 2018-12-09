//
//  DetailedViewController.swift
//  PracticeCollectionViews
//
//  Created by Sarin Swift on 12/8/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import Foundation
import UIKit

class DetailedViewController: UIViewController {
    
    // writing a viewController programmatically
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.5656920671, blue: 0.6006624699, alpha: 1)
        setUpView()
    }
    
    func setUpView() {
        // UIView image
        let newView = UIView()
        newView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.view.addSubview(newView)
        
        newView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: newView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: newView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: newView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: newView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 250).isActive = true
        
        // UIlabel for the name
        let infoLabel = UILabel()
        infoLabel.text = "something for now"
        infoLabel.textAlignment = .center
        self.view.addSubview(infoLabel)
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: infoLabel, attribute: .top, relatedBy: .equal, toItem: newView, attribute: .bottom, multiplier: 1, constant: 30).isActive = true
        NSLayoutConstraint(item: infoLabel, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -100).isActive = true
        NSLayoutConstraint(item: infoLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 100).isActive = true
        NSLayoutConstraint(item: infoLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        // UIButton addEmoji
        let emojiButton = UIButton()
        emojiButton.setTitle("Add Emoji!", for: .normal)
        emojiButton.setTitleColor(.blue, for: .highlighted)
        emojiButton.backgroundColor = .blue
        emojiButton.layer.cornerRadius = 20
        emojiButton.addTarget(self, action: #selector(emojiButtonTapped), for: .touchUpInside)
        self.view.addSubview(emojiButton)
        
        emojiButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: emojiButton, attribute: .top, relatedBy: .equal, toItem: infoLabel, attribute: .bottom, multiplier: 1, constant: 30).isActive = true
        NSLayoutConstraint(item: emojiButton, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -50).isActive = true
        NSLayoutConstraint(item: emojiButton, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: emojiButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: emojiButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 60).isActive = true
    }
    
    @objc func emojiButtonTapped(sender: UIButton) {
        sender.isSpringLoaded = true
    }
}
