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
    let movie: Movie
    var body: some View {
        Text(movie.title)
            .font(.largeTitle)
    }
}

#Preview {
    MovieDetailView(movie: MovieController().movies[2])
}
