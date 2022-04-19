//
//  YouTubeComponent+Coordinator.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import SwiftUI
import WebKit

extension Component.VideoPlayer.YouTube {
  /// The coordinator of `WebView`.
  class Coordinator: NSObject {
    var isPlay: Binding<Bool>
    
    init(isPlay: Binding<Bool>) {
      self.isPlay = isPlay
    }
  }
}

// MARK: - Computed Properties

extension Component.VideoPlayer.YouTube.Coordinator {
  var webConfiguration: WKWebViewConfiguration {
    let userContentController = WKUserContentController()
    userContentController.add(self, name: "playerStateObserver")
    let webConfiguration = WKWebViewConfiguration()
    webConfiguration.userContentController = userContentController
    webConfiguration.mediaTypesRequiringUserActionForPlayback = []
    webConfiguration.allowsInlineMediaPlayback = true
    return webConfiguration
  }
}

// MARK: - Navigation Delegate

extension Component.VideoPlayer.YouTube.Coordinator: WKNavigationDelegate {
  func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, preferences: WKWebpagePreferences) async -> (WKNavigationActionPolicy, WKWebpagePreferences) {
    preferences.allowsContentJavaScript = true
    return (.allow, preferences)
  }
}

// MARK: - Script Handler

extension Component.VideoPlayer.YouTube.Coordinator: WKScriptMessageHandler {
  func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
    guard let data = message.body as? Int else {
      return
    }
    
    switch data {
    /// Video is playing.
    case 1:
      print("Video is playing")
      isPlay.wrappedValue = true
      
    /// Video is paused.
    case 2:
      print("Video is paused")
      isPlay.wrappedValue = false
      
    default:
      print("Unknown player state")
    }
  }
}

