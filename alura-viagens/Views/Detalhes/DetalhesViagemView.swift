//
//  DetalhesViagemView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 30/06/21.
//

import SwiftUI

struct DetalhesViagemView: View {
    // MARK: - Atributos
    var pacoteDeViagem: PacoteDeViagem
    
    let corDaFonte = Color(red: 77.0/255, green: 77.0/255, blue: 77.0/255)
    
    
    var body: some View {
        GeometryReader { view in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Image(pacoteDeViagem.imagens[0])
                        .resizable()
                        .frame(height: 200)
                }
                VStack {
                    
                    Text(pacoteDeViagem.titulo.uppercased())
                        .font(.custom("Avenir Black", size: 26))
                        .foregroundColor(corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Text(pacoteDeViagem.descricao)
                        .font(.custom("Avenir", size: 16))
                        .foregroundColor(corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Spacer()
                        .frame(height: 15)
                    Text(pacoteDeViagem.detalhes)
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(corDaFonte)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    Spacer()
                        .frame(height: 15)
                    HStack {
                        VStack {
                            Text("Válido para o período de:")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                            Text(pacoteDeViagem.dataValidade)
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        }
                        VStack {
                            Text("R$ \(pacoteDeViagem.valor)")
                                .font(.custom("Avenir Black", size: 25))
                                .foregroundColor(.orange)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                            Text("Sem taxas em até 12x")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        }
                    }
                    
                    Divider()
                    
                    VStack {
                        Text("O que está incluso")
                            .font(.custom("Avenir", size: 20))
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        
                        HStack {
                            VStack {
                                Image("icone-apartamento")
                                Text("Apartamento")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .center)
                            }
                            Spacer()
                                .frame(height: 20)
                            VStack {
                                Image("icone-aviao")
                                Text("Passagem Aérea")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(corDaFonte)
                                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .center)
                                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            }
                        }
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        
                        Divider()
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacoteDeViagem: pacotesDeViagens[0])
    }
}
