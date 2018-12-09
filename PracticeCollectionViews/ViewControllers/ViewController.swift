//
//  ViewController.swift
//  PracticeCollectionViews
//
//  Created by Sarin Swift on 12/8/18.
//  Copyright © 2018 sarinswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let viewsBGColor: [UIColor] = [.red, .blue, .cyan, .gray, .brown, .green, .magenta, .white]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // set this so we can use the flowLayout, or else the cells won't show becasue you set the collectionView to custom but didnt conform to this uiCollectionViewFlowLayout()
        self.collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewsBGColor.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .black
        cell.viewsColor.backgroundColor = viewsBGColor[indexPath.row]
        return cell
    }

}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let sectionInsets = UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20)
        return sectionInsets
    }
    
    
}
