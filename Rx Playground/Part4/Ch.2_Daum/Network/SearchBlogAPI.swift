//
//  SearchBlogAPI.swift
//  Rx Playground
//
//  Created by ChangMin on 2022/06/06.
//

import Foundation

struct SearchBlogAPI {
    static let scheme = "https"
    static let host = "dapi.kakao.com"
    static let path = "/v2/search/blog"
    
    func searchBlog(query: String, page: Int) -> URLComponents {
        var components = URLComponents()
        components.scheme = SearchBlogAPI.scheme
        components.host = SearchBlogAPI.host
        components.path = SearchBlogAPI.path
        
        components.queryItems = [
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "page", value: String(page)),
            URLQueryItem(name: "size", value: "20")
        ]
        
        return components
    }
}
