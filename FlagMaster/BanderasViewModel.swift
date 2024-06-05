//
//  BanderasViewModel.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 15/5/24.
//

import Foundation

class BanderasViewModel {
    
    let repositorio : RepositorioBanderas
    
    
    init(repositorio: RepositorioBanderas) {
        self.repositorio = repositorio
    }
    
    func obtenerBanderas(id : Int) -> Bandera?{
        return repositorio.banderas[id]
    }
    
    func obtenerBanderaAleatoria() -> Bandera?{
        let nRandom = Int.random(in: 0..<repositorio.banderas.count)
        return repositorio.banderas[nRandom]
    }
    
    func obtenerDicAleatorio() -> [Int:Bandera]?{
        let nRandom = Int.random(in: 0..<repositorio.banderas.count)
        if let bandera = repositorio.banderas.randomElement(){
            return [bandera.key: bandera.value]
        } else {
            return nil
        }
    
    }
    
    func obtenerAllBanderas() -> [Int:Bandera]{
        repositorio.crearBanderas()
        return repositorio.banderas
    }
    
}
