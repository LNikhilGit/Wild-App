//
//  CodableBundleExtension.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import Foundation


extension Bundle{
    
    func decode<T: Codable>(_ file: String ) -> T {
        
        // 1. locate the JSONfile
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate the \(file) error ")
        }
        
        // 2. create the property for data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load the \(file) error ")
        }
        
        // 3. create decode
        let decoder = JSONDecoder()
        
        // 4. create the property for the decoded data
        
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode the \(file) from the bundle ")
        }
        
        // 5. return the decoded data
        return loaded
    }
}
