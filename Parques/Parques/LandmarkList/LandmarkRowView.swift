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
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay{
                    Circle().stroke(.white, lineWidth: 3)
                }
                .shadow(radius: 6)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview("Lista") {
    Group{
        LandmarkRowView(landmark: landmarks[0])
        LandmarkRowView(landmark: landmarks[1])
        LandmarkRowView(landmark: landmarks[2])
        LandmarkRowView(landmark: landmarks[3])
        LandmarkRowView(landmark: landmarks[4])
        LandmarkRowView(landmark: landmarks[5])
        LandmarkRowView(landmark: landmarks[6])
        LandmarkRowView(landmark: landmarks[7])
        LandmarkRowView(landmark: landmarks[8])
        LandmarkRowView(landmark: landmarks[9])
        LandmarkRowView(landmark: landmarks[10])
        LandmarkRowView(landmark: landmarks[11])

    }
}

#Preview("Individual") {
    Group{
        LandmarkRowView(landmark: landmarks[0])
    }
}
