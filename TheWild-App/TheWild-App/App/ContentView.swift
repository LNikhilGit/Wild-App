//
//  ContentView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import SwiftUI

struct ContentView: View {
    // Mark:- Properties
    
    let animals : [AnimalModel] = Bundle.main.decode("animals.json")
    var body: some View {
        
        // Navigation View
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                // Loop :- Animals List View
                ForEach(animals){
                    animal in
                    
                    AnimalListItemView(animal: animal)
                }// End Loop
            } // End List
            .navigationTitle("Africa")
        } // End NavigationView
    }
}

#Preview {
    ContentView()
}
