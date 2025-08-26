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
    let movie: Movie

    init(_ movie: Movie) {
        self.movie = movie
    }

    var body: some View {
        HStack(spacing: 24) {
            ImageRowView(poster: movie.poster)
            
            SideInfoView(
                title: movie.title,
                director: movie.director,
                genre: movie.genre,
                runtime: movie.runtime
            )
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MovieRowView(MovieController().movies[2])
}
