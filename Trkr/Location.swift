//
//  Location.swift
//  Trkr
//
//  Created by Stephane Lafontaine on 2021-06-22.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let more: String
    let description: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
//    let pictures: Array
    let advisory: String
    
    static let example = Location(id: 1, name: "Test", country: "Test country", more: "More stuff", description: "Description", latitude: 54.22, longitude: -12.098, heroPicture: "smokies", advisory: "Gilles disclaimer")
}
