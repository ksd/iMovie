// iMovieApp.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 26/08/2025 at 09.39.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI

@main
struct iMovieApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environment(MovieViewModel())
        }
    }
}
