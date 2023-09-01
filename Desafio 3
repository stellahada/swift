import SwiftUI

struct Desafio3: View {
    @State private var username: String = ""
    @State private var alert = false
    var body: some View {
        
        ZStack {
            Image("bg")
                .resizable(capInsets: EdgeInsets())
                .frame(width: nil)
                .opacity(0.2)
            
            VStack{
                Text("Bem vindo, \(username)")
                    .font(.title)
                
                TextField("Nome", text: $username)
                Spacer()
            }
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 100)
                
                Image("truck")
                    .resizable()
                    .frame(width: 200, height: 100)
                
                Button("Entrar") {
                        alert = true
                }
                     .alert(isPresented: $alert) {
                        Alert(title: Text("ALERTA"), message: Text("Você irá iniciar o desafio aula agora."), dismissButton: .default(Text("Vamos lá")))
                              }
                        }
                }
            }
        }
    


struct Desafio3_Previews: PreviewProvider {
    static var previews: some View {
        Desafio3()
    }
}
