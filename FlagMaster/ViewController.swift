//
//  ViewController.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 15/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var viewModel: BanderasViewModel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let repositorio = RepositorioBanderas()
        viewModel = BanderasViewModel(repositorio: repositorio)
        
        /*
        let allBanderas = viewModel.obtenerAllBanderas()
        for (id, bandera ) in allBanderas {
            print("ID: \(id), Bandera: \(bandera.bandera), puntos: \(bandera.puntosBandera)")
        }
        
        
        print("BANDERA ALEATORIA : \(viewModel.obtenerBanderaAleatoria()?.bandera)")
        */
    }

    

}

