//
//  MainView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        // TabView
        TabView{
            
            // 1. Content View
            ContentView().tabItem {
                Image(systemName: "house")
                Text("Home")
            } // End ContenView
            
            // 2. Video view
            VideoView().tabItem {
                Image(systemName: "play.rectangle")
                Text("Vide")
            }
            // 3. Map view
            
            MapView().tabItem {
                Image(systemName: "map")
                Text("Location")
            }
            // 4. Gallery view
            
            GalleryView().tabItem {
                Image(systemName: "photo")
                Text("Gallery")
            }
            
        }// End TabView
    }
}

#Preview {
    MainView()
}
