//
//  VideoListItem.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/6/24.
//

import SwiftUI

let videos:[VideosModel] = Bundle.main.decode("videos.json")

struct VideoListItemView: View {
    
    let video: VideosModel
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        HStack (spacing: 10){
            ZStack {
                Image(video.thumbNail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
            VStack(alignment:. leading, spacing: 10){
                Text(video.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    VideoListItemView(video: videos[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
