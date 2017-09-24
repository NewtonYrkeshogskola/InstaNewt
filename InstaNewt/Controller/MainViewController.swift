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
        
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        
        // Adding example data
        
        let blobb4: NSData = UIImagePNGRepresentation(UIImage(named: "flowers")!)! as NSData
        let postobj4 = Post(favourite: true, imageText: "Oh look at deez flowers!!!!!!11!!" ,imageData: blobb4)
        imageArray.append(postobj4)
        
        let blobb: NSData = UIImagePNGRepresentation(UIImage(named: "rainbow")!)! as NSData
        let postobj = Post(favourite: true, imageText: "Rainbows are beautiful" ,imageData: blobb)
        imageArray.append(postobj)
        
        let blobb2: NSData = UIImagePNGRepresentation(UIImage(named: "water")!)! as NSData
        let postobj2 = Post(favourite: false, imageText: "Summer is awesome!" ,imageData: blobb2)
        imageArray.append(postobj2)
        
        let blobb3: NSData = UIImagePNGRepresentation(UIImage(named: "turtle")!)! as NSData
        let postobj3 = Post(favourite: false, imageText: "Turtles are reptiles of the order Testudines characterised by a special bony or cartilaginous shell developed from their ribs and acting as a shield. \"Turtle\" may refer to the order as a whole or to fresh-water and sea-dwelling testudines." ,imageData: blobb3)
        imageArray.append(postobj3)
        
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            self.imageCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "viewPost", sender: imageArray[indexPath.row])
    }
    
    // Send the selected post
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewPost" {
            let clicked = segue.destination as! ViewPostVC
            clicked.post = sender as? Post
        }
    }
    
    @IBAction func unwindToStart(segue: UIStoryboardSegue) { }

}
