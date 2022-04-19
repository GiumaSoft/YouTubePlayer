//
//  YouTubePlayButton+Style.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 19/04/22.
//

import SwiftUI

extension Resource.Style.Button {
  struct YouTubePlay: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
      configuration
        .label
        .foregroundColor(Self.foregroundColor)
        .frame(
          width: Self.width,
          height: Self.height,
          alignment: Self.alignment
        )
    }
  }
}

extension Resource.Style.Button.YouTubePlay {
  /// Put a comment here.
  static let width = Measure.Component.Size.micro
  
  /// Put a comment here.
  static let height = Measure.Component.Size.micro
  
  /// Put a comment here.
  static let alignment: Alignment = .center
  
  /// Put a comment here.
  static let foregroundColor = Measure.Component.Color.foregroundPrimary
}
