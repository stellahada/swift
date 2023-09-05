//
//  modo2.swift
//  Aula04
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct modo2: View {
    @State var username: String = ""
    var body: some View {
        VStack {
            TextField("Nome", text: $username)
                .multilineTextAlignment(.center) //centralizar
            NavigationLink(destination: modo2part2(pUsername: username)) {
                Text("link")
            }
        }
    }
}

struct modo2_Previews: PreviewProvider {
    static var previews: some View {
        modo2()
    }
}
