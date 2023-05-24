//
//  BildingView.swift
//  primer
//
//  Created by Oscar Roberto Valdes Rodriguez on 24/05/23.
//

import SwiftUI

struct BildingView: View {
    
    @Binding var RowJugador: Jugador
    
    var body: some View {
        
        VStack{
            Text("Goles marcados: \(RowJugador.IdEquipo)")
            Button("+1") {
                RowJugador.IdEquipo += 1
            }
        }
    }
}

struct BildingView_Previews: PreviewProvider {
    static var previews: some View {
        BildingView(RowJugador: .constant(Jugador(id: 1, nombre: "Lionel Messi", altura: "1.69", peso: "65.8", fecha: "25/agosto/97", NumUni: "19", posicion: "Delantero",equipo: "BARCELONA", IdEquipo: 1, image: Image("messi"),Escudo: Image("barca"),amarrila: "1",roja: "0",goles: "2",Asistencias: "1",idpartido: 1,partido: "barcelona vs ")))
    }
}

