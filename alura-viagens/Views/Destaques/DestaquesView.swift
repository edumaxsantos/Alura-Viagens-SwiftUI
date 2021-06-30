//
//  DestaquesView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 29/06/21.
//

import SwiftUI

struct DestaquesView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                // MARK: - VStack Principal
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 350, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct DestaquesView_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesView()
    }
}
