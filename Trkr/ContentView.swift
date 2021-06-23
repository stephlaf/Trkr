//
//  ContentView.swift
//  Trkr
//
//  Created by Stephane Lafontaine on 2021-06-21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()

            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)

            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)

            Text(location.description)
                    .padding(.horizontal)

            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)

            Text(location.more)
                    .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

// This is just for xCode's preview functionality
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location: Locations().primary)
        }
    }
}
