//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Jose Manuel Malagón Alba on 9/12/21.
//

import Foundation

//MARK: - ArticleListViewModel
struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}


//MARK: - ArticleViewModel
struct ArticleViewModel {
    private let article: Article
    
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
    
}

extension ArticleViewModel {
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
    
}
