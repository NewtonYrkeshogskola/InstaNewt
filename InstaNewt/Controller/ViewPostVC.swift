//
//  ViewPostVC.swift
//  InstaNewt
//
//  Created by Giovanni Palusa on 2017-09-24.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import UIKit

class ViewPostVC: UIViewController {

    @IBOutlet weak var blurredImg: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    
    var post: Post!
    
    let likedImg = UIImage(named: "liked")
    let unlikedImg = UIImage(named: "like")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blurredImg.image = UIImage(data: post.imageData as Data,scale:1.0)
        mainImage.image = UIImage(data: post.imageData as Data,scale:1.0)
        mainLbl.text = post.imageText
        
        if post.favourite == true {
            likeBtn.setImage(likedImg, for: .normal)
        } else {
            likeBtn.setImage(unlikedImg, for: .normal)
        }
        
    }

    @IBAction func likeAcn(_ sender: Any) {
        likeBtn.setImage(likedImg, for: .normal)
    }
    

}
