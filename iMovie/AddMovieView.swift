// AddMovieView.swift
// Project: iMovie 
// Compiled with Swift version 6.0
//
// Created by ksd/Kaj Schermer Didriksen on 11/09/2025 at 09.31.
// Copyright © 2025 ksd. All rights reserved.
//
// 

import SwiftUI




struct AddMovieView: View {
    @Environment(MovieViewModel.self) private var viewModel
    @Binding var showingAddMovieSheet: Bool

    @State private var movieName = ""
    @State private var year = Date()
    @State private var runtime = 0
    @State private var isFavorite = true
    @FocusState private var movieNameFocusstate: Bool

    var body: some View {
            Form {
                Section("Stamdata") {
                    TextField("Moviename", text: $movieName)
                        .focused($movieNameFocusstate)

                    DatePicker(
                        "Release Year",
                        selection: $year,
                        displayedComponents: .date
                    )
                    Stepper(
                        "Runtime: \(runtime) min.",
                        value: $runtime,
                        in: 0...1000,
                        step: 50
                    )
                }
                Section("UserData") {
                    Toggle(isOn: $isFavorite) {
                        Text("Favorite movie")
                    }
                    
                    Button {
                        let newMovie = Movie(title: movieName,
                                             year: "2019",
                                             runtime: "122 min",
                                             genre: "Action, Adventure, Sci-Fi, Thriller",
                                             director: "Robert Rodriguez",
                                             actors: "Rosa Salazar, Christoph Waltz, Jennifer Connelly, Mahershala Ali",
                                             plot: "A deactivated cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.",
                                             country: "USA",
                                             awards: "8 wins & 25 nominations.",
                                             poster: "Alita")
                        viewModel.add(movie: newMovie)
                        showingAddMovieSheet = false
                    } label: {
                        Text("Tilføj movie")
                    }
                    .buttonStyle(.borderedProminent)

                }
        }
            .onAppear(){
                movieNameFocusstate = true
            }
    }

}

#Preview {
    @Previewable @State var x = true
    AddMovieView(showingAddMovieSheet: $x)
        .environment(MovieViewModel())
}
