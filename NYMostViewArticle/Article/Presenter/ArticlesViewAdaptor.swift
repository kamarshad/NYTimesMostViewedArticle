//
//  HomeViewAdaptor.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import Foundation

protocol ArticlesViewAdaptor: class {
    func showError(message: String)
    func reloadNYTimesArticles()
}
