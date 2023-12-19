//
//  ContentView.swift
//  RaceTrack
//
//  Created by Saurav Maheshkar on 18/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "car")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("RaceTrack")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
