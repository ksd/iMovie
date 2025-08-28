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
    @Environment(MovieViewModel.self) private var viewModel

    var body: some View {
        @Bindable var viewModel = viewModel
        NavigationStack {
            List {
                ForEach($viewModel.movies) { movie in
                    NavigationLink {
                        MovieDetailView(movie: movie)
                    } label: {
                        MovieRowView(movie: movie)
                    }

                }
            }
            .navigationTitle("MovieList")
        }
    }
}

#Preview {
    ContentView().environment(MovieViewModel())
}
