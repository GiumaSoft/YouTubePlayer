//
//  View+Extensions.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 20/04/22.
//

import SwiftUI
import WebKit

// MARK: - Styling Functions

extension UIViewRepresentable where UIViewType: WKWebView {
  func youTubeWebViewStyle() -> some View {
    modifier(Resource.Style.View.YouTubeWebView())
  }
}
