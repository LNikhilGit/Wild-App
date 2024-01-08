//
//  MapAnnotationView.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

var locations: [LocationModel] = Bundle.main.decode("locations.json")

struct MapAnnotationView: View {
    
    //Propertie
    var location: LocationModel
    @State var animation: Double = 0.0
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1-animation)
                
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }.onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}

#Preview {
    MapAnnotationView(location: locations[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
