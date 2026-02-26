//
//  app.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct MusicPlayerView: View {
    var body: some View {
        VStack {
            Image(systemName: "music.note.list")
                .font(.system(size: 60))
                .foregroundColor(.purple)
            Text("Music Player View")
                .font(.title2)
                .padding(.top, 8)
            Text("Coming soon...")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Music Player")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MusicPlayerView()
}
