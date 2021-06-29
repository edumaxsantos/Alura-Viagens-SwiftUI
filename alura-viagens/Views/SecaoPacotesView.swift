//
//  SecaoPacotesView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 28/06/21.
//

import SwiftUI

struct SecaoPacotesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("América do norte")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    PacotesViagensView()
                    PacotesViagensView()
                    PacotesViagensView()
                }
            }
        }
        .frame(height: 300)
        .background(Color(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView()
            .previewLayout(.fixed(width: 600, height: 300))
    }
}
