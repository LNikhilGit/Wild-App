//
//  Video.swift
//  TheWild-App
//
//  Created by Nikhil Lalam on 1/1/24.
//

import SwiftUI

struct VideoView: View {
    // Properties
  @State var videos: [VideosModel] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView() {
            List{
                ForEach(videos){ video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        VideoListItemView(video: video)
                            .padding(.vertical,8)
                    }
                    
                }//: Loop
            }//: List
            .navigationBarTitle("Videos", displayMode: .inline )
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//: Navigation
    }
}

#Preview {
    VideoView()
}
