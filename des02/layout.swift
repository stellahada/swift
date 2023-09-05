//
//  layout.swift
//  Aula04
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct layout: View {
    @State var isShowingSheet = false
    var body: some View {
        NavigationStack {
            NavigationLink(destination: modo1()) {
                Text("Modo 1")
            }
            NavigationLink(destination: modo2()) {
                Text("Modo 2")
            }
            NavigationLink(destination: modo3()) {
                Button(action: {
                    isShowingSheet.toggle()
                }) {
                    Text("Modo 3")
                }
                .sheet(isPresented: $isShowingSheet, onDismiss: didDismiss) {
                    VStack{
                        Text("texto 1")
                    }
                }
            }
        }
    }
    func didDismiss(){
    }
}

struct layout_Previews: PreviewProvider {
    static var previews: some View {
        layout()
    }
}
