//
//  alura_viagensApp.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import SwiftUI

@main
struct alura_viagensApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            SecaoPacotesView(nomeDaSecao: pacotesDeViagens[0].categoria.rawValue, pacotes: pacotesDeViagens)
        }
    }
}
