//
//  PostCell.swift
//  InstaNewt
//
//  Created by Jacob Ahlberg on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import Foundation

class Post {
    private var _imageData: Data
    private var _imageText: String
    private var _favourite: Bool
    
    var imageData: Data {
        return _imageData
    }
    
    var imageText: String {
        return _imageText
    }
    
    var favourite: Bool {
        return _favourite
    }
    
    init(text: String, imageData: Data, favourite: Bool) {
        _imageText = text
        _imageData = imageData
        _favourite = favourite
    }
}
