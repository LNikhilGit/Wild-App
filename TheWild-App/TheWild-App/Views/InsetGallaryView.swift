//
//  InsetGallaryView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

struct InsetGallaryView: View {
    // Padding
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self){ item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(15)
                }
            }
        }
    }
}

#Preview {
    InsetGallaryView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
