//
//  ViewController.swift
//  InstaNewt
//
//  Created by Jacob Ahlberg on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostCollectionViewCell", for: indexPath) as? ImageCell {
            let post = imageArray[indexPath.row]
            cell.updateViews(image: post)
            return cell
        }
        
        return ImageCell()
    }
    
    @IBAction func unwindToStart(segue: UIStoryboardSegue) { }

}
