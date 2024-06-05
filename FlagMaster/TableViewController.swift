//
//  TableViewController.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 4/6/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    
    
    private var viewModel : BanderasViewModel!
    
    var banderas = [Int : Bandera]()
    
    var idBandera = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repositorio = RepositorioBanderas()
        viewModel = BanderasViewModel(repositorio: repositorio)
        
        banderas = viewModel.obtenerAllBanderas()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return banderas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath) as! BanderaTableViewCell
        
        var id = indexPath.row
        
        cell.nombre.text = viewModel.obtenerBanderas(id: id)?.nBandera
        
        idBandera = viewModel.obtenerBanderas(id: id)!.bandera
        if var imagen = UIImage(named : idBandera){
            cell.bandera.image = imagen
        }
        
        cell.puntos.text = "puntos: \(viewModel.obtenerBanderas(id: id)!.puntosBandera)"
        //cell.textLabel?.text = viewModel.obtenerBanderas(id: indexPath.row)?.nBandera
        /*var id = indexPath.row
        idBandera = viewModel.obtenerBanderas(id: id)!.bandera
        nombre.text = viewModel.obtenerBanderas(id: id)?.nBandera
        if var image = UIImage(named: idBandera){
            imagen.image = image
        }*/
        
        return cell
    }

}
