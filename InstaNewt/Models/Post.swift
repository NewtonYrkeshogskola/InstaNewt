//
//  Post.swift
//  InstaNewt
//
//  Created by Jacob Ahlberg on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import Foundation

class Post {
    private var _details: String
    private var _image: Data
    private var _like: Bool
    
    var details: String {
        return _details
    }
    
    var image: Data {
        return _image
    }
    
    var like: Bool {
        return _like
    }
    
    init(details: String, image: Data, like: Bool) {
        _details = details
        _image = image
        _like = like
    }
}

