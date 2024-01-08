//
//  ExternalWeblinkView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // Properties
    let animal: AnimalModel
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                }.foregroundColor(.accentColor)
            }
        }//: GroupBox
    }
}

#Preview {
    ExternalWeblinkView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
