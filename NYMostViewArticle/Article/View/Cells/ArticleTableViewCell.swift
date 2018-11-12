//
//  ArticlesTableViewCell.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell, ReusableView, NibLoadableView {
   
    @IBOutlet private weak var articleImageView: UIImageView!
    @IBOutlet private weak var articleNameLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var publishDateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.intialSetup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func intialSetup() {
        self.articleNameLabel.numberOfLines = 2
        self.authorLabel.numberOfLines = 2
        self.articleImageView.contentMode = .scaleAspectFill
    }
    
    func configure(article: NYTimesArticle) {
        articleNameLabel?.text = article.title
        authorLabel?.text = article.author
        self.publishDateLabel.text = article.publishedDate
    }
    
    func updateArticle(thumbnail: UIImage) {
        articleImageView.image = thumbnail
    }
}
