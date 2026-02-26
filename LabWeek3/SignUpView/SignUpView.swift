//
//  app.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.badge.plus.fill")
                .font(.system(size: 60))
                .foregroundColor(.green)
            Text("Sign Up View")
                .font(.title2)
                .padding(.top, 8)
            Text("Coming soon...")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Sign Up")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SignUpView()
}
