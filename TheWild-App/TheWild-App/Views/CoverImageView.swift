//
//  CoverImageView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import SwiftUI

struct CoverImageView: View {
    // propeerties
    
    let coverImage : [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView{
            ForEach(coverImage){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
