//
//  ContentView.swift
//  YouTubePlayer
//
//  Created by Giuseppe Mazzilli on 15/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Component.VideoPlayer.View()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
