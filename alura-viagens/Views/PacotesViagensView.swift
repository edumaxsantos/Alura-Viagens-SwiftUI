//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 28/06/21.
//

import SwiftUI

struct PacotesViagensView: View {
    var body: some View {        
        GeometryReader { view in
            VStack {
                Image("nova-york-1")
                    .resizable()
                    .frame(height: 135)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                Text("Nova York")
                    .font(.custom("Avenir Black", size: 12))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                Text("Aéreo + Hotel")
                    .font(.custom("Avenir", size: 10))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                Text("01 de mar ~ 30 de jul")
                    .font(.custom("Avenir", size: 10))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                Text("a partir de")
                    .font(.custom("Avenir", size: 9))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                Text("R$ 3.325")
                    .font(.custom("Avenir Black", size: 16))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(.orange)
                Text("em até 12x")
                    .font(.custom("Avenir", size: 9))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                Text("cancelamento Grátis")
                    .font(.custom("Avenir", size: 9))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(.green)
            }
        }
        .frame(width: 180, height: 250)
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView()
            //.previewLayout(PreviewLayout.fixed(width: 180, height: 250))
    }
}
