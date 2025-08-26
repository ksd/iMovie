// ContentView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 26/08/2025 at 09.39.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

struct ContentView: View {
    @State private var movieController = MovieController()
    var body: some View {
        NavigationStack {
            List {
                ForEach(movieController.movies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        MovieRowView(movie)
                    }

                }
            }
            .navigationTitle("MovieList")
        }
    }
}

#Preview {
    ContentView()
}
