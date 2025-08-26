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
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack{
                Text(title)
                    .font(.headline)
                Spacer()
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
    let mc = MovieController()
    SideInfoView(title: mc.movies[0].title,
                 director: mc.movies[0].director,
                 genre: mc.movies[0].genre,
                 runtime: mc.movies[0].runtime)
}
