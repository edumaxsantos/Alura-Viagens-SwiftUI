//
//  ContentView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }
            ListaDePacotesView()
                .tabItem {
                    Text("Lista de Pacotes")
                    Image("icone-mala")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
