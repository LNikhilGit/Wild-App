//
//  AnimalListItemView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import SwiftUI

struct AnimalListItemView: View {
    // Properties

    let animal: AnimalModel
    
    var body: some View {
        // Hstack
        HStack(alignment: .center, spacing: 16){
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width:90, height: 90)
                .clipShape(
                    (RoundedRectangle(cornerRadius: 12))
                )
            
            VStack(alignment: .leading, spacing: 8){
                
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 8)
            }
        }// End Hstack
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
    static var animals : [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
    }
}
