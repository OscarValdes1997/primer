//
//  DeteilList.swift
//  primer
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/05/23.
//

import SwiftUI

struct DeteilList: View {
    private var Jugadores = [Jugador(id: 1, nombre: "Lionel Messi", altura: "1.69", peso: "65.8", fecha: "25/agosto/97", NumUni: "10", posicion: "Delantero",equipo: "BARCELONA", IdEquipo: 1, image: Image("messi"),Escudo: Image("barca"),amarrila: "1",roja: "0",goles: "2",Asistencias: "1",idpartido: 1,partido: "barcelona vs ")]
    
    var body: some View {
        
        VStack{
            Text("Hola")
        }
    }
}

struct DeteilList_Previews: PreviewProvider {
    static var previews: some View {
        DeteilList()
    }
}
