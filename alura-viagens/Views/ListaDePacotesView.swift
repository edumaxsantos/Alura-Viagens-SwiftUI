//
//  ListaDePacotesView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 29/06/21.
//

import SwiftUI

struct ListaDePacotesView: View {
    
    // MARK: - Atributo
    var categorias: [String:[PacoteDeViagem]] {
        Dictionary(grouping: pacotesDeViagens, by: {
            $0.categoria.rawValue
        })
    }
    
    var body: some View {
        List {
            ForEach(categorias.keys.sorted(), id: \.self) { chave in
                SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
            }
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
