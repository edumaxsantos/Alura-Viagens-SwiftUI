//
//  ContentView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("alura viagens")
            Text("ESPECIAL")
            Text("BRASIL")
            
            List {
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("Rio de Janeiro")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
