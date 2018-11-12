//
//  Download.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//


import Foundation

class Download {
    var article: NYTimesArticle
    var task: URLSessionDownloadTask?
    var isDownloading = false
    
    init(article: NYTimesArticle) {
        self.article = article
    }
}
