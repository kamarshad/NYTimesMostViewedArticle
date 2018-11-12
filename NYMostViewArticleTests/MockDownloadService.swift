//
//  MockDownloadImageService.swift
//  NYMostViewArticleTests
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation
import XCTest
@testable import NYMostViewArticle

class MockDownloadImageService: DownloadImageService {
    
    private var activeDownloads: [URL: Download] = [:]
    
    func startDownload(_ article: NYTimesArticle){
        let download = Download(article: article)
        download.isDownloading = true
        activeDownloads[article.aritcleImageURL!] = download
    }
    
    func getActiveDownloads() -> [URL: Download]{
        return activeDownloads
    }
}
