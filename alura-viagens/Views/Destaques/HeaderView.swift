//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    private func isCompact(yes compactValue: CGFloat, no regularValue: CGFloat) -> CGFloat {
        return self.horizontalSizeClass == .compact ? compactValue : regularValue
    }
    
    private var defaultSize: CGFloat {
        return isCompact(yes: 20, no: 30)
    }
    
    private var defaultButtonSize: CGFloat {
        return isCompact(yes: 17, no: 24)
    }
    
    private func defaultButtonOffset(width: CGFloat) -> CGFloat {
        return isCompact(yes: 50, no: width / 4)
    }
    
    
    var body: some View {
        
        GeometryReader { view in
            VStack {
                // MARK: - VStack Header
                VStack {
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: defaultSize))
                        .padding(.top, isCompact(yes: 50, no: 90))
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: defaultSize))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: defaultSize + 3))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    
                }
                .frame(width: view.size.width, height: isCompact(yes:180, no: 310), alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: defaultButtonSize))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: isCompact(yes: 100, no: 150), height: isCompact(yes: 50, no: 75), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .offset(x: defaultButtonOffset(width: view.size.width))
                    
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: defaultButtonSize))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: isCompact(yes: 100, no: 150), height: isCompact(yes: 50, no: 75), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    .offset(x: -(defaultButtonOffset(width: view.size.width)))
                }
                .offset(y: isCompact(yes: -25, no: -37.5))
            }
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 360))
        }
        
    }
}
