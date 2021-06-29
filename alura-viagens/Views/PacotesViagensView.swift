//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 28/06/21.
//

import SwiftUI

struct PacotesViagensView: View {
    
    // MARK: - Atributos
    var pacoteDeViagem: PacoteDeViagem
    
    var body: some View {        
        GeometryReader { view in
            VStack {
                Image(self.pacoteDeViagem.imagens.first ?? "")
                    .resizable()
                    .frame(height: 135)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                Text(self.pacoteDeViagem.titulo)
                    .font(.custom("Avenir Black", size: 12))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                Text(self.pacoteDeViagem.descricao)
                    .font(.custom("Avenir", size: 10))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                Text(self.pacoteDeViagem.dataValidade)
                    .font(.custom("Avenir", size: 10))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                Text("a partir de")
                    .font(.custom("Avenir", size: 9))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                Text("R$ \(self.pacoteDeViagem.valor)")
                    .font(.custom("Avenir Black", size: 16))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(.orange)
                Text("em até 12x")
                    .font(.custom("Avenir", size: 9))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                Text("cancelamento Grátis")
                    .font(.custom("Avenir", size: 9))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(.green)
            }
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1)
        .border(Color(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0))
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView(pacoteDeViagem: pacotesDeViagens[0])
            .previewLayout(PreviewLayout.fixed(width: 180, height: 250))
    }
}
