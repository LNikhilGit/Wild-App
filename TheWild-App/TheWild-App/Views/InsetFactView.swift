//
//  InsetFactView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

struct InsetFactView: View {
    // Properties
    let animal: AnimalModel
    
    var body: some View {
        // GroupBox
        GroupBox {
            //TabView
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: tabview
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            
            
        } //: groupBox
    }
}

#Preview {
    InsetFactView(animal: animals[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
