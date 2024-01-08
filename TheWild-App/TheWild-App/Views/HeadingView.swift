//
//  HeadingView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

struct HeadingView: View {
    // Properties
    
    var headingImage : String
    var headingTitle : String
    
    // Body
    var body: some View {
        HStack {
           Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large )
            Text(headingTitle)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
        }
        .padding(.vertical)
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in ictures")
        .previewLayout(.sizeThatFits)
        .padding()
}
