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
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
    }
    
    var body: some View {
        NavigationView {
            if #available(iOS 14.0, *) {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(categorias.keys.sorted(), id: \.self) { chave in
                            SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                        }
                    }
                    .navigationBarTitle("Pacotes")
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                }
            } else {
                List {
                    ForEach(categorias.keys.sorted(), id: \.self) { chave in
                        SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                    }
                }
                .navigationBarTitle("Pacotes")
                .padding(.leading, -10)
                .padding(.trailing, -10)
                .onAppear {
                    UITableView.appearance().separatorStyle = .none
                    UITableView.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)
                }
                .onDisappear {
                    UITableView.appearance().separatorStyle = .singleLine
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
