//
//  MapView.swift
//  Parques
//
//  Created by dam2 on 14/2/24.
//

import SwiftUI
import MapKit

@available(iOS 17.0, *)
struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        //Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    }
}

#Preview {
    if #available(iOS 17, *){
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.01086076647153, longitude: -116.166759136))
    } else {
        Text("Mapa no disponible, debe actualizar a iOS 17 o a una versión posterior")
    }
    
}

///LiquidRay-1
