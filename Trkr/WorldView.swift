//
//  WorldView.swift
//  Trkr
//
//  Created by Stephane Lafontaine on 2021-06-22.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51, longitude: 0),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
//        $ sign if for 2 way bind the value of region (read & write)
        Map(coordinateRegion: $region,
            annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate:
                CLLocationCoordinate2D(
                latitude: location.latitude,
                longitude: location.longitude)) {
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 80, height: 40)
                    .shadow(radius: 1)
            }
        }
        .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
