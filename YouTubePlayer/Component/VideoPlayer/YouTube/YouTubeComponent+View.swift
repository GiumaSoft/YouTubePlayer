//
//  YouTubeWebViewComponent+View.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import SwiftUI
import WebKit

extension Component.VideoPlayer.YouTube {
  struct View: UIViewRepresentable {
    @Binding var isPlay: Bool
    
    @State var videoId: String
    
    func makeCoordinator() -> Coordinator {
      Coordinator(isPlay: $isPlay)
    }
    
    func makeUIView(context: Context) -> WKWebView {
      ViewModel.webView(
        videoId,
        coordinator: context.coordinator
      )
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
      uiView.evaluateJavaScript(
        isPlay ? "player.playVideo()" : "player.pauseVideo()"
      )
    }
  }
}

// MARK: - Typealiases

extension Component.VideoPlayer.YouTube.View {
  /// Put a comment here.
  typealias ViewModel = Component.VideoPlayer.YouTube.ViewModel
}

struct YouTubeView_Previews: PreviewProvider {
  /// Put a comment here.
  typealias Default = Component.VideoPlayer.YouTube.Default
  
  static var previews: some View {
    EmptyView()
  }
}
