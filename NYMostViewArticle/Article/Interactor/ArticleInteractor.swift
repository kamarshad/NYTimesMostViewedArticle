//
//  HomeInteractor.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation

protocol ArticleInteractor {
    func numberOfArticles() -> Int
    func article(at index: Int) -> NYTimesArticle
    func getArticles(completion: @escaping (Bool, String?)-> Void)
}

class ArticleInteractorImpl: ArticleInteractor {
    
    private var articles: [NYTimesArticle] = []
    private var service: NYTimesArticleService
    
    init(service: NYTimesArticleService) {
        self.service = service
    }
    
    func numberOfArticles() -> Int {
        return articles.count
    }
    
    func article(at index: Int) -> NYTimesArticle {
        return articles[index]
    }
    
    func getArticles(completion: @escaping (Bool, String?) -> Void) {
        self.service.searchMostViewedArticle(duration: "7") { (response, errorMessage) in
            if errorMessage != nil {
                completion(false, errorMessage)
                return
            }
            if let notNilArticle = response {
                self.articles = notNilArticle
                completion(true, nil)
            }
        }
    }
}

