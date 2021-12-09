//
//  WebService.swift
//  GoodNews
//
//  Created by Jose Manuel Malagón Alba on 9/12/21.
//

import Foundation


class WebService {

    func getArticles(url: URL, completion: @escaping ([Article]?) -> () ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                
                let articles = try? JSONDecoder().decode(ArticleList.self, from: data).articles
                
                print(articles)
                completion(articles)
            }
            
            
        }.resume()
        
    }
}
