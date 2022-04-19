//
//  YouTubeComponent+Default.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import SwiftUI

extension Component.VideoPlayer.YouTube {
  /// The defaults of `WebView`.
  struct Default {
    /// Default cache policy of the webview.
    static let cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy
    
    /// Default timeout interval of loading webview.
    static let urlRequestTimeoutInterval: TimeInterval = 10
    
    /// Default frame width.
    static let frameWidth: CGFloat = 320
    
    /// Default frame max width.
    static let frameHeight: CGFloat = 200
    
    /// Default frame max width.
    static let frameAligment: Alignment = .center
  }
}
