//
//  Bandera.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 15/5/24.
//

import Foundation


class Bandera {
    
    var id : Int = 1
    var bandera : String
    var nBandera : String
    var puntosBandera : Int = 2
    
    init(id : Int, bandera: String, nBandera : String, puntosBandera: Int) {
        self.id = id
        self.bandera = bandera
        self.nBandera = nBandera
        self.puntosBandera = puntosBandera
    }
    
}
