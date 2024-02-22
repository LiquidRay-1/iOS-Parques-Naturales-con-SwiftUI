//
//  FavoriteButton.swift
//  Parques
//
//  Created by dam2 on 22/2/24.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Alternar favorito", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
