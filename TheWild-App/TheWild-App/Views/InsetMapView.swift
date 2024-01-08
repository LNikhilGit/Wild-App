//
//  InsetMapView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // Properties
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()){
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(10)
                    )
                }
                    .padding(12), alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(15)
    }
}

#Preview {
    InsetMapView()
        .previewLayout(.sizeThatFits)
        .padding()
}
