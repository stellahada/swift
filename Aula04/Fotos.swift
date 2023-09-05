//
//  Fotos.swift
//  Aula04
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct Fotos: View {
    private var image = [
        "here.fill",
        "tortoise.fill",
        "pawprint.fill",
        "ant.fill",
        "ladybug.fill"
    
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(image, id: \.self) { index in
                Image(systemName: "\(index)")
                    .font(.system(size: 150))
                    .padding()
            }
        }
    }
}

struct Fotos_Previews: PreviewProvider {
    static var previews: some View {
        Fotos()
    }
}
