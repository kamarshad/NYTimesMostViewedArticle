//
//  InteractorFactory.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation

class InteractorFactory {
    static let sharedInstance = InteractorFactory()
    
    func articleService() -> NYTimesArticleService {
        return NYTimesArticleServiceImpl()
    }
    
    func articleScreenInteractor() -> ArticleInteractor {
        return ArticleInteractorImpl(service: self.articleService())
    }
    
    func downloadService(delegate: URLSessionDelegate) -> DownloadImageService {
        return DownloadImageServiceImpl(delegate: delegate)
    }
    
    func downloadInteractor(delegate: URLSessionDelegate) -> DownloadImageInteractor {
        let service = self.downloadService(delegate: delegate)
        return DownloadImageInteractorImpl(downloadService: service)
    }
    
}
