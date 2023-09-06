//
//  ContentView.swift
//  mapa
//
//  Created by Student on 06/09/23.
//

import SwiftUI
import MapKit

struct Lugar: Identifiable {
    let id = UUID()
    let nome: String
    let coordenada: CLLocationCoordinate2D
    let bandeira: String
    let descricao: String
}


struct ContentView: View {
    @State var isShowingSheet = false

    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
        span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))
    
    
    @State var locais: [Lugar] = [
        Lugar(nome: "Grajaú", coordenada: CLLocationCoordinate2D(latitude: -23.7880, longitude: -46.6653), bandeira: "bandeira", descricao: "cidade do rap"),
        Lugar(nome: "japão", coordenada: CLLocationCoordinate2D(latitude: -5.8154034, longitude: -46.1361454), bandeira: "bandeira", descricao: "cidade do rap")
    ]
    
    @State var aux =  Lugar(nome: "Grajaú", coordenada: CLLocationCoordinate2D(latitude: -23.7880, longitude: -46.6653), bandeira: "bandeira", descricao: "cidade do rap")

    var body: some View {
            VStack {

                Text(aux.nome)
                
                Map(coordinateRegion: $region, annotationItems: locais) { index in
                    MapAnnotation(coordinate: index.coordenada){
                        Circle().onTapGesture {
                            aux = index
                            isShowingSheet = true
                        }
                    }
                    
                }.sheet(isPresented: $isShowingSheet) {
                    Text(aux.nome)
                    Text(aux.descricao)
                    }
                    .frame(width: 400, height: 600)
               
                HStack {
                    ScrollView(.horizontal) {
                        Spacer()
                        HStack {
                            ForEach(locais) { locai in
                                Button(action: {
                                    withAnimation {
                                        
                                        region.center = (locai.coordenada)
                                        region.span = (MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3))
                                    }}) {
                                        Text(locai.nome)
                                    }
                                    .frame(width: 50.0)
                    
                            }
                                .frame(width: 50.0)
                         }
                        
                    }
                    .padding(.leading, 30.0)
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
