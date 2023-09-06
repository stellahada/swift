//
//  musica.swift
//  Aula05
//
//  Created by Student on 05/09/23.
//

import SwiftUI

struct musica: View {
    @State var nomeMusica: Musica
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                AsyncImage(url: URL(string: "https://i1.sndcdn.com/artworks-mOJWc2JXF5IDrv7k-3NwZ9w-t500x500.jpg")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }.padding([.leading, .bottom, .trailing], 10.0)
                    .frame(width: 300.0, height: 300.0)
                
                Text("Imprevisto")
                    .foregroundColor(.white)
                Text("Yago Oproprio")
                    .foregroundColor(.white)
                Spacer()
                
                HStack{
                    Image(systemName: "shuffle")
                    
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill")
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")
                }
                .colorInvert()
                Spacer()
            }
            .frame(width: 400, height: .infinity)
                 .background(LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .center))
        }
    }
}

struct musica_Previews: PreviewProvider {
    static var previews: some View {
        musica(nomeMusica: Musica( nome: "nome", artista: "artista", capa: "https://i1.sndcdn.com/artworks-mOJWc2JXF5IDrv7k-3NwZ9w-t500x500.jpg"))
    }
}
