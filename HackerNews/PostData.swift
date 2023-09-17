//
//  PostData.swift
//  HackerNews
//
//  Created by Stefanus Albert Wilson on 9/17/23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
