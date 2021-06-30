//
//  ContentView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = "destaques"
    
    var body: some View {
        TabView(selection: $selection) {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }
                .tag("destaques")
            ListaDePacotesView()
                .tabItem {
                    Text("Lista de Pacotes")
                    Image("icone-mala")
                }
                .tag("pacotes")
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
