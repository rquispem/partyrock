//
//  PartyRock.swift
//  Party Rock App
//
//  Created by Ruben Quispe Montoya on 8/4/17.
//  Copyright © 2017 rquispe. All rights reserved.
//

import Foundation
class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        self._imageURL = imageURL
        self._videoURL = videoURL
        self._videoTitle = videoTitle
    }
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
}
