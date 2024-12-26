//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Amir Lajevardi on 25/12/2024.
//

import Foundation
import MapKit


class LocationsViewModel: ObservableObject {

    @Published var locations: [Location]
    @Published var mapLocations: Location
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            
        
init() {
    let locations = LocationsDataService.locations
    self.locations = locations
    self.mapLocations =  locations.first!
    self.updateMapRegion(location: locations.first!)
}
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
            }
        }
}
