//
//  Article.swift
//  rxGoodNews
//
//  Created by Jad Messadi on 11/13/20.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=32832e48a0bf4739bd5bdebfd02fa0ad")!
        return Resource(url: url)
    }()
    
}

struct Article : Decodable {
    let title : String
    let description : String?
}
