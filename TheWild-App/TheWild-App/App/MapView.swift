//
//  Map.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // Properties
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [LocationModel] = Bundle.main.decode("locations.json")
    
    var body: some View {
        
        // Basic Map
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            
            // 1. pin : (Old) style always static
            //MapPin(coordinate: location.location, tint: .accentColor)
            //MapMarker(coordinate: location.location, tint: .accentColor)
            
            // 2. Custom Basic anootation
            
            //            MapAnnotation(coordinate: location.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            //            }
            // 3. Complex Map annotation
            
            MapAnnotation(coordinate: location.location) {
                MapAnnotationView(location: location)
            }
        }
        .overlay(
            HStack (alignment: .center, spacing: 12){
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3){
                    HStack{
                        Text("Lattitute")
                            .font(.footnote)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    HStack{
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(12)
                        .opacity(0.6)
                ).padding(), alignment: .top
        )
    }
}

#Preview {
    MapView()
}
