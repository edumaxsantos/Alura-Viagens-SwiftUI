//
//  SecaoPacotesView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 28/06/21.
//

import SwiftUI

struct SecaoPacotesView: View {
    var body: some View {
        VStack {
            Text("América do norte")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    PacotesViagensView()
                    PacotesViagensView()
                    PacotesViagensView()
                }
            }
        }
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView()
    }
}
