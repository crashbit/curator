//
//  FeedItem.swift
//  Curator
//
//  Created by Germán Santos Jaimes on 29/05/20.
//  Copyright © 2020 Germán Santos Jaimes. All rights reserved.
//

import AppKit

enum FeedType{
    case blog
    case course
    case news
    case tutorial
    case tweet
}


class FeedItem{
    var title:String
    var url: String
    var description: String
    var date: Date
    var type: FeedType
    
    init(title: String, url: String, description: String, date: Date, type: FeedType){
        self.title = title
        self.url = url
        self.description = description
        self.date = date
        self.type = type
    }
}
