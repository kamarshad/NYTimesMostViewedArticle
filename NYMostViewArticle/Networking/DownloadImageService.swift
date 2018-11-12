//
//  DownloadImageService.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation
import UIKit

protocol DownloadImageService {
    func startDownload(_ article: NYTimesArticle)
    func getActiveDownloads() -> [URL: Download]
}

class DownloadImageServiceImpl: DownloadImageService {
    private var activeDownloads: [URL: Download] = [:]
    private weak var delegate: URLSessionDelegate?
    
    lazy var downloadsSession: URLSession = {
        let configuration = URLSessionConfiguration.background(withIdentifier: "bgSessionConfiguration")
        return URLSession(configuration: configuration, delegate: self.delegate, delegateQueue: nil)
    }()
    
    
    init(delegate: URLSessionDelegate) {
        self.delegate = delegate
    }
    
    func startDownload(_ article: NYTimesArticle) {
        guard let imageURL =  article.aritcleImageURL else {
            return
        }
        let download = Download(article: article)
        download.task = downloadsSession.downloadTask(with: imageURL)
        download.task!.resume()
        download.isDownloading = true
        activeDownloads[imageURL] = download
    }
    
    func getActiveDownloads() -> [URL: Download]  {
        return self.activeDownloads
    }
    
}

