//
//  RowView.swift
//  primer
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/05/23.
//

import SwiftUI

struct RowView: View {
    
    @State var RowJugador: Jugador
    @State var seleccion: Int?
    
    var body: some View {
    
        NavigationStack {
            HStack(){
                RowJugador.image.resizable().frame(width: 80, height: 60)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.black,lineWidth: 1)
                    }.shadow(color: .black, radius: 2)//.shadow(color: .red , radius: 2)
                
                VStack(alignment: .leading){
                    Text(RowJugador.nombre)
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    Text(RowJugador.posicion)
                        .font(.footnote)
                        .fontWeight(.light)
                        .underline()
                }
                
                Spacer()
                VStack{
                    Text("Goles marcados: \(RowJugador.IdEquipo)")
                    Button("+1") {
                        RowJugador.IdEquipo += 1
                    }
                    NavigationLink(destination: DeteilView(RowJugador: $RowJugador), tag: 1, selection: $seleccion){
                        Button("ir a Estadisticas") {
                            seleccion = 1
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(RowJugador: Jugador(id: 1, nombre: "Lionel Messi", altura: "1.69", peso: "65.8", fecha: "25/agosto/97", NumUni: "19", posicion: "Delantero",equipo: "BARCELONA", IdEquipo: 1, image: Image("messi"),Escudo: Image("barca"),amarrila: "1",roja: "0",goles: "2",Asistencias: "1",idpartido: 1,partido: "barcelona vs "))
    }
}
