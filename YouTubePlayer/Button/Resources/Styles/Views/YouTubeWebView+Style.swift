//
//  YouTubeWebView+Style.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 20/04/22.
//

import SwiftUI

extension Resource.Style.View {
  struct YouTubeWebView: ViewModifier {
    func body(content: Content) -> some View {
      content
        .frame(
          width: Self.width,
          height: Self.height,
          alignment: Self.alignment
        )
    }
  }
}

extension Resource.Style.View.YouTubeWebView {
  /// Put a comment here.
  static let width = Measure.Component.Size.large
  
  /// Put a comment here.
  static let height = Measure.Component.Size.normal
  
  /// Put a comment here.
  static let alignment: Alignment = .center
}
