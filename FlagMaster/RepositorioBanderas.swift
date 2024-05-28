//
//  RepositorioBanderas.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 15/5/24.
//

import Foundation

class RepositorioBanderas{
    
    
    var banderas = [Int : Bandera]()
    
    //banderas += [Bandera(idBandera: "AfganistanFlag", nombreBandera: "Afganistan", puntosBandera: 5)]
    init(){
        crearBanderas()
    }
    
     func crearBanderas() {
        let misBanderas : [Bandera] = [
            Bandera(id: 0,  bandera: "Afganistan",          nBandera: "Afganistan",         puntosBandera: 1),
            Bandera(id: 1,  bandera: "Albania",             nBandera: "Albania",            puntosBandera: 1),
            Bandera(id: 2,  bandera: "Alemania",            nBandera: "Alemania",           puntosBandera: 1),
            Bandera(id: 3,  bandera: "Andorra",             nBandera: "Andorra",            puntosBandera: 1),
            Bandera(id: 4,  bandera: "Angola",              nBandera: "Angola",             puntosBandera: 1),
            Bandera(id: 5,  bandera: "AntiguaYBarbuda",     nBandera: "Antigua y barbuda",  puntosBandera: 1),
            Bandera(id: 6,  bandera: "ArabiaSaudita",       nBandera: "Arabia Saudita",     puntosBandera: 1),
            Bandera(id: 7,  bandera: "Argelia",             nBandera: "Argelia",            puntosBandera: 1),
            Bandera(id: 8,  bandera: "Argentina",           nBandera: "Argentina",          puntosBandera: 1),
            Bandera(id: 9,  bandera: "Armenia",             nBandera: "Armenia",            puntosBandera: 1),
            Bandera(id: 10, bandera: "Australia",           nBandera: "Australia",          puntosBandera: 1),
            Bandera(id: 11, bandera: "Austria",             nBandera: "Austria",            puntosBandera: 1),
            Bandera(id: 12, bandera: "Azerbaiyan",          nBandera: "Azerbaiyán",         puntosBandera: 1),
            Bandera(id: 13, bandera: "Suiza",               nBandera: "Suiza",              puntosBandera: 1)
        ]
        
        for(i, bandera) in misBanderas.enumerated(){
            self.banderas[i] = bandera
        }
    }
    
    func eliminarBandera(_ idBandera : Int){
        banderas.removeValue(forKey: idBandera)
    }
}
