// ImageRowView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 26/08/2025 at 10.47.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

struct ImageRowView: View {
    var poster: String
    var body: some View {
        Image(poster)
            .resizable()
            .frame(width: 70, height: 110)
        .shadow(color: .gray, radius: 10, x: 4, y: 4)
    }
}

#Preview {
    ImageRowView(poster: "Inception")
}
