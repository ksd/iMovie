// FavoriteView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 28/08/2025 at 11.09.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

struct FavoriteView: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .font(.largeTitle)
                .foregroundStyle(isSet ? .red : .secondary)
        }

    }
}

#Preview("Favorite") {
    Group {
        FavoriteView(isSet: .constant(true))
        FavoriteView(isSet: .constant(false))
    }
}
