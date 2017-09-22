//
//  Post.swift
//  InstaNewt
//
//  Created by Jacob Ahlberg on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import Foundation

class Post {
    private var _imageData: NSData
    private var _imageText: String
    private var _favourite: Bool
    
    var imageData: NSData {
        return _imageData
    }
    
    var imageText: String {
        return _imageText
    }
    
    var favourite: Bool {
        return _favourite
    }
    
    init(_ text: String,_ imageData: NSData,_ favourite: Bool) {
        _imageText = text
        _imageData = imageData
        _favourite = favourite
    }
}
