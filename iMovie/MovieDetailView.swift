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
    @Binding var movie: Movie
    var body: some View {
        HStack {
            FavoriteView(isSet: $movie.isFavorite)

            Text(movie.title)
                .font(.largeTitle)

        }
    }
}

#Preview {
    MovieDetailView(movie: .constant(TestData.movies[2]))
}
