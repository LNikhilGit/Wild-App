//
//  AnimalsDetailView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

let animals: [AnimalModel] = Bundle.main.decode("animals.json")

struct AnimalsDetailView: View {
    // Properties
    
    
    let animal: AnimalModel
    
    // Body
    var body: some View {
        // ScrollView
        ScrollView(.vertical){
            // VStack
            VStack(alignment: .center, spacing: 20){
                
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // Title
                
                Text("Learn More about \(animal.name.uppercased())")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //Headline
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //Gallery
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
                    InsetGallaryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingTitle: "Did you Know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //Description
                
                Group{
                    HeadingView(headingImage: "info.circle", headingTitle: "All About \(animal.name)" )
                    Text(animal.description)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //Map
                
                Group{
                    HeadingView(headingImage: "map.fill", headingTitle: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                //Link
                Group{
                    HeadingView(headingImage: "books.vertical", headingTitle:"Learn More")
                    ExternalWeblinkView(animal: animal)
                }
                
            } //: VStack
            .navigationTitle(animal.name)
            
        } //: ScrollView
    }
}

#Preview {
    NavigationView{
        AnimalsDetailView(animal: animals[0])
    }
}
