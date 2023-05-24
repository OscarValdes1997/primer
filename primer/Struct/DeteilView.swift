//
//  DeteilView.swift
//  primer
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/05/23.
//

import SwiftUI

struct DeteilView: View {
    @Binding var RowJugador: Jugador
    var body: some View {
        ZStack{
            Color("color1").edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                VStack{
                    Image("estadio")
                        .resizable().frame(width: 800, height: 400)
                        .ignoresSafeArea(edges: .top)
                        .shadow(radius: 10)
                        .offset(y: -140)
                    HStack{
                        VStack{
                            VStack{
                                RowJugador.image.resizable()
                                    .frame(width: 200, height:150)
                                    .clipShape(Circle())
                                    .overlay{
                                        Circle().stroke(.black, lineWidth: 2)
                                    }
                                    .shadow(radius: 14)
                                    .offset(y:-240)
                            }
                            VStack{
                                Text(RowJugador.nombre)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 5)
                                    .cornerRadius(30)
                                //.offset(y: -150)
                                Text(RowJugador.fecha)
                                    .font(.title3)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 5)
                                    .underline()
                                
                                Divider()
                                Text("Goles: \(RowJugador.IdEquipo)")
                                    .foregroundColor(Color.black)
                                    .padding(5)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                            }
                            .offset(y:-240)
                        }
                        
                    }
                    HStack{
                        VStack{
                            HStack{
                                VStack{
                                    
                                    Text("Posición").font(.title2)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                        .padding(8)
                                        .background(Color.black)
                                        .cornerRadius(20)
                                    Text(RowJugador.posicion).font(.title3)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                }
                                
                                VStack{
                                    
                                    Text("Numero").font(.title2)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                        .padding(8)
                                        .background(Color.black)
                                        .cornerRadius(20)
                                    Text(RowJugador.NumUni).font(.title3)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                }.offset(x: 0)
                            }
                            .offset(y: -80)
                            HStack{
                                VStack{
                                    
                                    Text("altura").font(.title2)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                        .padding(8)
                                        .background(Color.black)
                                        .cornerRadius(20)
                                    Text(RowJugador.altura).font(.title3)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                }.offset(x: -20,y: 20)
                                
                                VStack{
                                    
                                    Text("Peso").font(.title2)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                        .padding(8)
                                        .background(Color.black)
                                        .cornerRadius(20)
                                    Text(RowJugador.peso).font(.title3)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 5)
                                }.offset(x: 0,y: 20)
                                    

                            }
                            .offset(y: -90)
                            
                            HStack{
                                Text("Equipo Actual").font(.title3)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 5)
                                    .padding(9)
                                    .background(Color.black)
                                    .cornerRadius(20)
                                
                                VStack{
                                    
                                    RowJugador.Escudo.resizable()
                                        .frame(width: 70, height: 70)
                                    Text(RowJugador.equipo).foregroundColor(Color.white)
                                        .font(.title3)
                                        .shadow(radius: 20)
                                }
                            }.offset(x: 0 ,y: -40)
                            
                        }
                        .offset(x: 0,y: -130)
                        
                    
                    }
                    
                }
                
            
        }
    }
}

struct DeteilView_Previews: PreviewProvider {
    static var previews: some View {
        DeteilView(RowJugador: .constant(Jugador(id: 1, nombre: "Lionel Messi", altura: "1.69", peso: "65.8", fecha: "25/agosto/97", NumUni: "19", posicion: "Delantero",equipo: "BARCELONA", IdEquipo: 1, image: Image("messi"),Escudo: Image("barca"),amarrila: "1",roja: "0",goles: "2",Asistencias: "1",idpartido: 1,partido: "barcelona vs ")))
    }
}
