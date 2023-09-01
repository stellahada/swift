import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("bg")
                    .resizable()
                
                Image("bg")
                    .resizable()
                    .frame()
                    .clipShape(Circle())
                    .overlay(Text("HackaTruck")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(.bottom, 150.0))
                
                    HStack {
                        
                        Text("Maker")
                            .foregroundColor(.yellow)
                        Text("Space")
                            .foregroundColor(.red)
                            
                    }
                    .frame(width: 300.0, height: 150.0)
                    .background(Rectangle())
                        .foregroundColor(.black)
                                 
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
