//
//  NYTimesArticle.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//


import Foundation

struct NYTimesArticle {
    
    var id: Int
    var title: String
    var publishedDate: String
    var author: String
    var aritcleImageURL: URL?
    
    //Helper
    var index: Int?
    var isImageDownloaded = false
    
    init(id: Int,
         title: String,
         author: String,
         publishedDate: String,
         aritcleImageURL: URL?) {
        
        self.id = id
        self.title = title
        self.publishedDate = publishedDate
        self.author = author
        self.aritcleImageURL = aritcleImageURL
    }
}
