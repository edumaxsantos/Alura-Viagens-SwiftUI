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
    
    
    var body: some View {
        GeometryReader { view in
            VStack {
                Image(pacoteDeViagem.imagens[0])
                    .resizable()
                    .frame(height: 200)
                Text(pacoteDeViagem.titulo.uppercased())
                    .font(.custom("Avenir Black", size: 26))
                    .foregroundColor(Color(red: 77.0/255, green: 77.0/255, blue: 77.0/255))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
            }
        }
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacoteDeViagem: pacotesDeViagens[0])
    }
}
