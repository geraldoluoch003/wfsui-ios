//
//  ContentView.swift
//  App
//
//  Created by Gerald Oluoch on 26/05/2025.
//

import SwiftUI
import WFSUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            GradientLoader()
        }
        .padding()
    }
}

