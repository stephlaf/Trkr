//
//  Locations.swift
//  Trkr
//
//  Created by Stephane Lafontaine on 2021-06-22.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        // The Crash operator ! will make sure to build AND will crash if file in non-existant
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }

}
