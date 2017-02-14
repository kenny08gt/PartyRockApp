//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by LionMane Software on 2/14/17.
//  Copyright © 2017 LionMane Software. All rights reserved.
//

import Foundation

class PartyRock{
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageUrl: String{
        return _imageUrl
    }
    
    var videoUrl: String{
        return _videoUrl
    }
    
    var videoTitle: String{
        return _videoTitle
    }
    
    init(imageUrl: String, videoUrl: String, videoTitle: String) {
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
}
