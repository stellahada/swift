//
//  ContentView.swift
//  API-hadastella
//
//  Created by Student on 13/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
                ScrollView{
                    Text("Estacionamento")
                    ForEach(viewModel.chars, id: \._id) { index in
                        NavigationLink("endereco \(index.estacionamento!)"){
                            Text(index.endereco!)
                            Text(index.estacionamento!)
                                .foregroundColor(Color.black)
                        }
                    
                }
            }

            }
        .onAppear(){
            viewModel.fetch()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
