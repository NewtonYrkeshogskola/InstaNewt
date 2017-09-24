//
//  PostCollectionViewCell.swift
//  InstaNewt
//
//  Created by Niclas Hedell on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var postImage : UIImageView!
    
    func postImage () {
        postImage.image = imageArray[]
    }
    
    
}
