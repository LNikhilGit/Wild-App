//
//  VideosModel.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import Foundation
struct VideosModel: Codable,Identifiable{
    
    let id: String
    let name: String
    let headline: String
    
    var thumbNail: String{
        "video-\(id)"
    }
}
