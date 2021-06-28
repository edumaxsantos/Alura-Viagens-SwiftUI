//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    
    private func isCompact(yes compactValue: CGFloat, no regularValue: CGFloat) -> CGFloat {
        return self.horizontalSizeClass == .compact ? compactValue : regularValue
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: isCompact(yes: 14, no: 24)))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: isCompact(yes: 125, no: 200))
                .clipped()
                
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: isCompact(yes: 14, no: 24)))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: isCompact(yes: 14, no: 24)))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0]).previewLayout(.fixed(width: 350, height: 200))
    }
}
