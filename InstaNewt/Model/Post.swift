//
//  Post.swift
//  InstaNewt
//
//  Created by Jacob Ahlberg on 2017-09-22.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import Foundation

class Post {
    
    private(set) public var favourite: Bool!
    private(set) public var imageText: String!
    private(set) public var imageData: NSData!
    
    init(favourite: Bool, imageText: String, imageData: NSData) {
        self.favourite = favourite
        self.imageText = imageText
        self.imageData = imageData
    }
}
