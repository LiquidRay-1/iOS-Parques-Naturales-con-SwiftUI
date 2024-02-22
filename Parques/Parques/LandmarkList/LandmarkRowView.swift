//
//  LandmarkRowView.swift
//  Parques
//
//  Created by dam2 on 14/2/24.
//

import SwiftUI

struct LandmarkRowView: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 3)
                }
                
                .shadow(radius: 6)
            Spacer()
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
            }
            Spacer()
        }
    }
}

#Preview("Lista") {
    Group{
        LandmarkRowView(landmark: ModelData().landmarks[0])
        LandmarkRowView(landmark: ModelData().landmarks[1])
        LandmarkRowView(landmark: ModelData().landmarks[2])
        LandmarkRowView(landmark: ModelData().landmarks[3])
    }
}

#Preview("Individual") {
    Group{
        LandmarkRowView(landmark: ModelData().landmarks[0])
    }
}
