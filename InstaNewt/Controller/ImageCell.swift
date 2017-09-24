//
//  viewImageVC.swift
//  InstaNewt
//
//  Created by Giovanni Palusa on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postText: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    
    func updateViews(image: Post) {
        postImage.image = UIImage(data:image.imageData as Data,scale:1.0)
        // postText.text = image.imageText - Set post text
        // likeBtn.text = image.favourite - Set heart to image
    }
    
}
