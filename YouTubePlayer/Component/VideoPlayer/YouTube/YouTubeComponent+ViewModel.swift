//
//  YouTubeComponent+Logic.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import WebKit

extension Component.VideoPlayer.YouTube {
  struct ViewModel {
    static func webView(_ videoId: String, coordinator: Coordinator) -> WKWebView {
      let webView = WKWebView(
        frame: .zero,
        configuration: coordinator.webConfiguration
      )
      webView.navigationDelegate = coordinator
      webView.loadHTMLString(
        Self.getVideoHTMLStringFromId(videoId),
        baseURL: nil
      )
      return webView
    }
    
    static private func getVideoHTMLStringFromId(_ videoId: String) -> String {
      """
      <!DOCTYPE html>
      <html>
        <style>
          * { margin: 0; padding: 0; }
          html, body { width: 100%; height: 100%; }
        </style>
        <body>
          <!-- 1. The <iframe> (and video player) will replace this <div> tag. -->
          <div id="player"></div>

          <script>
            // 2. This code loads the IFrame Player API code asynchronously.
            var tag = document.createElement('script');

            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

            // 3. This function creates an <iframe> (and YouTube player)
            //    after the API code downloads.
            var player;
            function onYouTubeIframeAPIReady() {
              player = new YT.Player('player', {
                height: '100%',
                width: '100%',
                videoId: '\(videoId)',
                events: {
                  'onReady': onPlayerReady,
                  'onStateChange': onPlayerStateChange
                }
              });
            }

            // 4. The API will call this function when the video player is ready.
            function onPlayerReady(event) {
              <!-- event.target.playVideo(); -->
            }

            // 5. The API calls this function when the player's state changes.
            //    The function indicates that when playing a video (state=1),
            //    the player should play for six seconds and then stop.
            var done = false;
            function onPlayerStateChange(event) {
              window.webkit.messageHandlers.playerStateObserver.postMessage(event.data);
            }
            function stopVideo() {
              player.stopVideo();
            }
      
            function playVideo() {
              player.playVideo();
            }
      
            function pauseVideo() {
              player.pauseVideo();
            }
          </script>
        </body>
      </html>
      """
    }
  }
}

// MARK: - Typealiases

extension Component.VideoPlayer.YouTube.ViewModel {
  /// Put a comment here.
  typealias Default = Component.VideoPlayer.YouTube.Default
}

