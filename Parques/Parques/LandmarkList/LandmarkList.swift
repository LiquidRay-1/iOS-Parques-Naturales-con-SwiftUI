//
//  LandmarkList.swift
//  Parques
//
//  Created by dam2 on 14/2/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //Con esto no solucionamos nada, es más correcto hacer una lista dinámica
        //List{
        //    LandmarkRowView(landmark: landmarks[3])
        //    LandmarkRowView(landmark: landmarks[6])
        //}
        
        //Lista dinámica
        //List(landmarks, id: \.id){ landmark in {este es el modelo que debemos utilizar cuando el modelo no implementa Identifiable}
        
        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink {
                    ContentView(landmark: landmark)
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
                .navigationTitle("Lugares de interés")
            } detail: {
                Text("Texto")
        }
    }
}

#Preview {
    LandmarkList()
}
