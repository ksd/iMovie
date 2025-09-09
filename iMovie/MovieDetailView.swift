// MovieDetailView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 26/08/2025 at 11.23.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    @Environment(MovieViewModel.self) private var viewModel

    var body: some View {
        @Bindable var viewModel = viewModel
        HStack {
            FavoriteView(
                isSet: $viewModel.movies[viewModel.findIndexFor(movie: movie)].isFavorite
            )

            Text(movie.title)
                .font(.largeTitle)


        }
    }
}

#Preview {
    MovieDetailView(movie: TestData.movies[0]).environment(MovieViewModel())
}
