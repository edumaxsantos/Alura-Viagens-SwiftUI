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
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        GeometryReader { view in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack(alignment: .top) {
                        Image(pacoteDeViagem.imagens[0])
                            .resizable()
                            .frame(height: 200)
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("icone-voltar")
                                .resizable()
                                .renderingMode(Image.TemplateRenderingMode.original)
                                .frame(width: 15, height: 25, alignment: .leading)
                                .padding(.leading, 15)
                                .padding(.top, 45)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                VStack {
                    Group {
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
                    }
                    
                    HStack {
                        VStack {
                            Text("V??lido para o per??odo de:")
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
                            Text("Sem taxas em at?? 12x")
                                .font(.custom("Avenir", size: 14))
                                .foregroundColor(corDaFonte)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        }
                    }
                    
                    Divider()
                    
                    VStack {
                        Text("O que est?? incluso")
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
                                Text("Passagem A??rea")
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
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Escolher op????o")
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(Color.white)
                    
                }
                .frame(width: view.size.width - 30, height: 40, alignment: .center)
                .background(Color(red: 221.0/255, green: 58.0/255, blue: 126/255))
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
