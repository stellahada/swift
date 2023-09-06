//
//  ContentView.swift
//  Aula05
//
//  Created by Student on 05/09/23.
//

import SwiftUI
struct Musica : Identifiable {
    var id = UUID()
    var nome : String
    var artista : String
    var capa : String
}

struct ContentView: View {

   
    @State var listMusicas : [Musica] = [
        Musica( nome: "nome", artista: "artista", capa: "https://i1.sndcdn.com/artworks-mOJWc2JXF5IDrv7k-3NwZ9w-t500x500.jpg"),
        Musica( nome: "nome", artista: "artista", capa: "arrow.right.square"),
        Musica( nome: "nome", artista: "artista", capa: "arrow.right.square"),
        Musica( nome: "nome", artista: "artista", capa: "arrow.right.square"),
        Musica( nome: "nome", artista: "artista", capa: "arrow.right.square")
        ]
    
    var body: some View {
        NavigationStack {
            ZStack{
                ScrollView(showsIndicators: false) {
                    VStack {
                        AsyncImage(url: URL(string: "https://i1.sndcdn.com/artworks-mOJWc2JXF5IDrv7k-3NwZ9w-t500x500.jpg")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }.padding([.leading, .bottom, .trailing], 10.0)
                            .frame(width: 300.0, height: 300.0)
                        
                        Text("Vibes")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.trailing, 214.0)
                        
                        
                        ForEach(listMusicas) { index in
                            NavigationLink(destination: musica(nomeMusica: index)) {
                                HStack {
                                    AsyncImage(url: URL(string: "\(index.capa)")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50.0, height: 50.0)
                                    
                                    VStack {
                                        Text(index.nome)
                                            .padding(.trailing, 7.0)
                                        Text(index.artista)
                                    }
                                    .foregroundColor(.white)
                                    
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                        ScrollView(.horizontal) {

                                
                                    }
                                }
                                .padding(.trailing, 200.0)
                            }
                        }
                        
                        Text("sujestões")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.trailing, 234.0)
                        HStack {
                         ScrollView(.horizontal) {
                             HStack {
                                 ForEach(listMusicas) { index in
                                     AsyncImage(url: URL(string: "\(index.capa)")) { image in
                                         image.resizable()
                                     } placeholder: {
                                         ProgressView()
                                     }
                                     
                                     .frame(width: 100, height: 100.0)
                                     
                                     HStack{
                                             Text(index.nome)
                                             .padding(.trailing, 7.0)

                                             Text(index.artista)
                                         }
                                    
                                     .foregroundColor(.white)
                                 }
                                    
                                }
                            }
                        }
                    }
                    
                }
            }
            .frame(width: 400, height: .infinity)
                 .background(LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .center))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
