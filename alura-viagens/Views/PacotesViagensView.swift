//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 28/06/21.
//

import SwiftUI

struct PacotesViagensView: View {
    var body: some View {
        VStack {
            Image("nome-da-imagem")
            Text("Nova York")
            Text("Aéreo + Hotel")
            Text("01 de mar ~ 30 de jul")
            Text("a partir de")
            Text("R$ 3.325")
            Text("em até 12x")
            Text("cancelamento Grátis")
        }
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView()
    }
}
