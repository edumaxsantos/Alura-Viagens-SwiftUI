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
    
    let cor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categorias.keys.sorted(), id: \.self) { chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                }
                .listRowBackground(Color.init(cor))
            }
            .navigationBarTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
            .onAppear() {
                UITableView.appearance().separatorStyle = .none
                UITableView.appearance().backgroundColor = cor
                UITableViewCell.appearance().backgroundColor = cor
            }
            .onDisappear() {
                UITableView.appearance().separatorStyle = .singleLine
            }
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
