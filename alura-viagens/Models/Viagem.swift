//
//  Viagem.swift
//  Alura Viagens
//
//  Created by Eduardo Santos on 27/06/21.
//

import Foundation
import MapKit

struct Viagem: Hashable, Codable, Identifiable {
    var id: Int
    var titulo: String
    var imagem: String
    var valor: String
    var quantidadeDeDias: String
    var coordenada: Coordenada
    
    var localizacao: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordenada.latitude, longitude: coordenada.longitude)
    }
}

struct Coordenada: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
