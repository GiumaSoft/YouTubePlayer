//
//  VideoPlayerComponent+View.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import SwiftUI

extension Component.VideoPlayer {
  struct View: SwiftUI.View {
    @State var isPlay: Bool = false
    
    var body: some SwiftUI.View {
      ZStack {
        YouTube.View(
          isPlay: $isPlay,
          videoId: Default.videoId
        )
          .youTubeWebViewStyle()

        if isPlay.isFalse {
          Button {
            isPlay = true
          } label: {
            Image(systemName: Default.imageName)
              .resizable()
          }
          .youTubeButtonStyle()
        }

      }
    }
  }
}

// MARK: - Typealias

extension Component.VideoPlayer.View {
  /// Put a comment here.
  typealias Default = Component.VideoPlayer.Default
  
  /// Put a comment here.
  typealias YouTube = Component.VideoPlayer.YouTube
}

// MARK: - Preview

struct VideoPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    Component.VideoPlayer.View()
  }
}
