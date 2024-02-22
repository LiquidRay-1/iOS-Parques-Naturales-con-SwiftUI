//
//  ModelData.swift
//  Parques
//  :P
//  Created by dam2 on 14/2/24.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load <T: Decodable>(_ filename: String) -> T {
    let data:Data
    
    //Obtener fichero
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("No se ha podido encontrar el fichero \(filename)")
    }
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("No se puede cargar el fichero \(filename)\n\(error)")
    }
    
    //Decodificar el json
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("No se puede parsear el fichero \(filename) como \(T.self)")
    }
}
