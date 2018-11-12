//
//  MockDownloadImageInteractor.swift
//  NYMostViewArticleTests
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation
import XCTest

@testable import  NYMostViewArticle

class MockDownloadImageInteractor: DownloadImageInteractor {
    
    private let service: MockDownloadImageService
    
    init(service: MockDownloadImageService) {
        self.service = service
    }
    
    func startDownload(_ article: NYTimesArticle) {
        self.service.startDownload(article)
    }
    func getImage(key: URL) -> UIImage?{
       return nil
    }
    
    func saveDownload(sourceURL: URL, downloadingTo location: URL) {
        print("Save the downloaded image")
    }
    
    func activeDownload(key: URL) -> Download? {
       return self.service.getActiveDownloads()[key]
    }

}
