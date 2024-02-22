//
//  LandmarkList.swift
//  Parques
//
//  Created by dam2 on 14/2/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark]{
        landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Mostrar sólo favoritos")
                }
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink {
                        ContentView(landmark: landmark)
                    } label: {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Lugares de interés")
            } detail: {
                Text("Texto")
        }
    }
}

#Preview {
    LandmarkList()
}
