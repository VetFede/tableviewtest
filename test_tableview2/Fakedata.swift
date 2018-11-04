//
//  Fakedata.swift
//  Esercizio_tableview
//
//  Created by federico SPAGOCCI on 02/11/2018.
//  Copyright © 2018 Inoob_Spagocci. All rights reserved.
//

import Foundation

struct libro {
    var titolo: String
    var autore: String
    
}

struct libreria {
 var elencoLibri: [libro] = []
    
    init() {
      elencoLibri.append(libro(titolo: "Promessi sposi", autore: "Alessandro Manzoni"))
        elencoLibri.append(libro(titolo: "Divina Commedia", autore: " Dante Alighieri"))
    }

    
    mutating func AddLibro(libro: libro){
        elencoLibri.append(libro)
    
        
    }
    
    mutating func GetElencoLibri() -> [libro]{
        //    Popolo la libreria con 4 libri esempio come base dati fake
        
        
        return elencoLibri
        
    }
    
    func count() -> Int {
       return elencoLibri.count
        
    }
    
}


