//
//  MockNYTimesArticleService.swift
//  NYMostViewArticleTests
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation
import XCTest
@testable import NYMostViewArticle


class MockNYTimesArticleService: NYTimesArticleService {
    
    init() {
    
    }
    
    func cancelPreviousSearch() {
        print("Cacneled the api call")
    }
    
    func searchMostViewedArticle(duration: String, completion: @escaping QueryResult) {
        completion(nil, "Something went wrong")
    }
}
