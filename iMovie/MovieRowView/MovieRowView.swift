// MovieRowView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 26/08/2025 at 09.48.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

struct MovieRowView: View {
    var movie: Movie

    var body: some View {
        HStack(spacing: 24) {
            ImageRowView(poster: movie.poster)
            
            SideInfoView(
                title: movie.title,
                director: movie.director,
                genre: movie.genre,
                runtime: movie.runtime,
                isFavorite: movie.isFavorite
            )
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MovieRowView(movie: TestData.movies[2])
}
