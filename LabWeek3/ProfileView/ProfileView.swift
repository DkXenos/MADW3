//
//  app.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 60))
                .foregroundColor(.blue)
            Text("Profile View")
                .font(.title2)
                .padding(.top, 8)
            Text("Coming soon...")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView()
}
