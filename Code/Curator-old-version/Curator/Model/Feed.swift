//
//  Note.swift
//  Curator
//
//  Created by Germán Santos Jaimes on 28/05/20.
//  Copyright © 2020 Germán Santos Jaimes. All rights reserved.
//

import AppKit

class Feed{
    var feedDate: Date
    var feeds: [FeedItem]
    
    init(feedDate: Date, feeds:[FeedItem]) {
        self.feedDate = feedDate
        self.feeds = feeds
    }
}
