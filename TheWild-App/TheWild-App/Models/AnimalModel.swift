//
//  AnimalModel.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import Foundation

struct AnimalModel: Codable,Identifiable{
    let id : String
    let name : String
    let headline : String
    let description : String
    let link : String
    let image : String
    let gallery : [String]
    let fact : [String]
}
