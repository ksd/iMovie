// SideInfoView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 26/08/2025 at 10.50.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

struct SideInfoView: View {
    let title: String
    let director: String
    let genre: String
    let runtime: String
    let isFavorite: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Image(systemName: isFavorite ? "heart.fill" : "heart")
            }
            Text(director)
                .font(.subheadline)
            Group {
                Text(genre)
                Text(runtime)
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SideInfoView(title: TestData.movies[0].title,
                 director: TestData.movies[0].director,
                 genre: TestData.movies[0].genre,
                 runtime: TestData.movies[0].runtime,
                 isFavorite: TestData.movies[0].isFavorite)
}
