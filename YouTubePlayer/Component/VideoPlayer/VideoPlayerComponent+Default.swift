//
//  VideoPlayerComponent+Default.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import SwiftUI

extension Component.VideoPlayer {
  /// The defaults of `VideoPlayer`.
  struct Default {
    /// Max width for webview.
    static let frameWidth = Measure.Component.Size.large
    
    /// Max height for webview.
    static let frameHeight = Measure.Component.Size.normal
    
    /// Default timeout interval of loading webview.
    static let frameAligment: Alignment = .center
    
    /// Default background color on video play.
    static let backgroundColorOnPlay = Measure.Component.Color.backgroundNone
    
    /// Default background color on video stopped.
    static let backgroundColorOnStop = Measure.Component.Color.backgroundPrimaryShadowed
    
    /// Default image size.
    static let imageSize = Measure.Component.Size.micro
    
    /// Default image icon for play video button.
    static let imageName = "play.circle"
    
    /// Default image icon color for play video button.
    static let imageColor = Measure.Component.Color.backgroundSecondary
    
    /// Default stop value.
    static let isStop = true
    
    /// Default id of the video to be displayed.
    static let videoId = "yIbEibCsmHA"
  }
}

