 //
//  ContentView.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: ExpenseListView()) {
                    Label("Expense List View", systemImage: "creditcard.fill")
                }
                NavigationLink(destination: MusicPlayerView()) {
                    Label("Music Player View", systemImage: "music.note")
                }
                NavigationLink(destination: ProfileView()) {
                    Label("Profile View", systemImage: "person.fill")
                }
                NavigationLink(destination: SignUpView()) {
                    Label("Sign Up View", systemImage: "person.badge.plus.fill")
                }
            }
            .navigationTitle("Lab Week 3")
        }
    }
}

#Preview {
    ContentView()
}
