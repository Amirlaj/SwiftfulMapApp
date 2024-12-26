//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Amir Lajevardi on 25/12/2024.
//

import Foundation

class LocationsViewModel: ObservableObject {

@Published var locations: [Location]

init() {
let locations = LocationsDataService.locations
self.locations = locations
}

}
