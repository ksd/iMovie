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
    @State private var showingAddMovieSheet = false
    @State private var showingDeleteMovieConfirmationDialog = false
    @State private var selectedMovie: Movie?

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
                                    selectedMovie = movie
                                    showingDeleteMovieConfirmationDialog = true

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

            .sheet(isPresented: $showingAddMovieSheet) {
                AddMovieView(showingAddMovieSheet: $showingAddMovieSheet)
                    .presentationDetents([.large])
            }

            .confirmationDialog("Delete movie?",
                                isPresented: $showingDeleteMovieConfirmationDialog,
                                titleVisibility: .visible,
                                actions: {
                Button("Delete", role: .destructive){
                    if let movie = selectedMovie {
                        withAnimation {
                            viewModel.delete(movie: movie)
                            selectedMovie = nil
                        }
                    }
                }

            })

            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    Button {
                        showingAddMovieSheet = true
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
