//
//  ContentView.swift
//  Parques
//
//  Created by dam2 on 14/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView{
            VStack {
                
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack {
                    HStack {
                        Text(landmark.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        .foregroundColor(Color.yellow)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                            .foregroundColor(Color.orange)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                            .foregroundColor(Color.pink)
                    }
                    .padding(.horizontal)
                    Divider()
                    Text(landmark.description)
                }
                .padding()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView(landmark: ModelData().landmarks[0])
        .environment(ModelData())
}
