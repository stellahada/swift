//
//  ContentView.swift
//  Aula04
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .badge(2)
                .tabItem {
                    Label("Home", systemImage: "tray.and.arrow.down.fill")
                }
            Pesquisa()
                .tabItem {
                    Label("lupa",systemImage: "tray.and.arrow.down.fill" )
                }
            Fotos()
                .tabItem {
                    Label("Fotos", systemImage: "tray.and.arrow.down.fill")
                }
            /*Seila()
                .tabItem {
                    Label("Fotos", systemImage: "tray.and.arrow.down.fill")
                }*/
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
