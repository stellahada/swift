//
//  modo2part2.swift
//  Aula04
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct modo2part2: View {
    @State var pUsername: String
    var body: some View {
        Text("Volte \(pUsername)")
    }
}

struct modo2part2_Previews: PreviewProvider {
    static var previews: some View {
        modo2part2(pUsername: "Hada")
    }
}
