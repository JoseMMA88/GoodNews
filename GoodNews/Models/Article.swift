//
//  Article.swift
//  GoodNews
//
//  Created by Jose Manuel Malagón Alba on 9/12/21.
//

import Foundation

//      *** EXAMPLE ***
//    author": "Ashley Strickland, CNN",
//    "title": "NASA launches new x-ray telescope designed to unravel mysteries of black holes - CNN",
//    "description": "In the early morning hours of December 9, NASA launched its Imaging X-ray Polarimetry Explorer mission, or IXPE, to measure X-rays released by extreme cosmic objects -- black holes and neutron stars.",
//    "url": "https://www.cnn.com/2021/12/08/world/nasa-imaging-x-ray-polarimetry-explorer-mission-scn/index.html",
//    "urlToImage": "https://cdn.cnn.com/cnnnext/dam/assets/211203124412-nasa-ixpe-illustration-super-tease.jpeg",
//    "publishedAt": "2021-12-09T06:58:00Z",
//    "content": "(CNN)We're about to get a new perspective on some of the most extreme objects in the universe. In the early morning hours Thursday, NASA launched its Imaging X-ray Polarimetry Explorer mission, or IX… [+2461 chars]"

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
    
}
