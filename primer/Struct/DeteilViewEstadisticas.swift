//
//  DeteilViewEstadisticas.swift
//  primer
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/05/23.
//

import SwiftUI

struct DeteilViewEstadisticas: View {
    var deteilEstadisticas: Jugador
    var deteilpartido: Partidos
    var body: some View {
        ZStack{
            Color("color1").edgesIgnoringSafeArea(.all)
            VStack{
                Image("estadio")
                    .resizable().frame(width: 800, height: 400)
                    .ignoresSafeArea(edges: .top)
                    .shadow(radius: 10)
                    Spacer()
                HStack{
                    VStack{
                        deteilpartido.equipo1.resizable()
                            .frame(width: 200, height:200)
                            .clipShape(Circle())
                            .overlay{
                                Circle().stroke(.black, lineWidth: 2)
                                
                            }
                    }
                    Text("VS").font(.title).fontWeight(.black).foregroundColor(Color.white)
                    VStack{
                        deteilpartido.equipo2.resizable()
                            .frame(width: 200, height:200)
                            .clipShape(Circle())
                            .overlay{
                                Circle().stroke(.black, lineWidth: 2)
                            }
                    }
                }.offset(y: -450)
                
                VStack{
                    Group{
                        Text("Tarjetas amarillas: \(deteilEstadisticas.amarrila)")
                        Text("Tarjetas rojas: \(deteilEstadisticas.roja)")
                        Text("Tarjetas goles: \(deteilEstadisticas.goles)")
                        Text("Tarjetas asistencias: \(deteilEstadisticas.Asistencias)")
                    }
                    .font(.title)
                    .foregroundColor(Color.white)
                    
                }.offset(y: -300)
                
            }
            
        }//fondo de la app
    }
}

struct DeteilViewEstadisticas_Previews: PreviewProvider {
    static var previews: some View {
        DeteilViewEstadisticas(deteilEstadisticas: Jugador(id: 1, nombre: "Lionel Messi", altura: "1.69", peso: "65.8", fecha: "25/agosto/97", NumUni: "19", posicion: "Delantero",equipo: "BARCELONA", IdEquipo: 1, image: Image("messi"),Escudo: Image("barca"),amarrila: "1",roja: "0",goles: "2",Asistencias: "1",idpartido: 1,partido: "barcelona vs chelsea"), deteilpartido: Partidos(equipo1: Image("barca"), equipo2: Image("chelsea")))
    }
}
