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
    @State private var navigationPath: [Movie] = []

    var body: some View {

        NavigationStack(path: $navigationPath) {
            List {
                ForEach(viewModel.movies) { movie in
                    NavigationLink(value: movie) {
                        MovieRowView(movie: movie)
                    }
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                viewModel.delete(movie: movie)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: false) {
                                Button {
                                    viewModel.toggleFavorite(movie: movie)
                                } label: {
                                    Label("Favorite", systemImage: "heart")
                                }
                                .tint(.green)
                            }
                }
            }
            .navigationDestination(for: Movie.self, destination: { theMovie in
                MovieDetailView(movie: theMovie)
            })
            .navigationTitle("MovieList")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        print("Hello World - nu opretter vi en movie")
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
}

#Preview {
    ContentView().environment(MovieViewModel())
}
