//
//  ViewControllerJugar.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 15/5/24.
//

import UIKit

class ViewControllerJugar: UIViewController {

    private var viewModel: BanderasViewModel!
    private var tempViewModel: BanderasViewModel!
    
    @IBOutlet weak var banderaImageView: UIImageView!
    
    @IBOutlet weak var boton_1: UIButton!
    @IBOutlet weak var boton_2: UIButton!
    @IBOutlet weak var boton_3: UIButton!
    @IBOutlet weak var boton_4: UIButton!
    @IBOutlet weak var resultado: UILabel!
    
    //var imagen = 1
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var identificador = 5
        
        let repositorio = RepositorioBanderas()
        viewModel = BanderasViewModel(repositorio: repositorio)
        tempViewModel = viewModel
        
        let bandera = viewModel.obtenerDicAleatorio()
        let nBandera = bandera!.values.first?.nBandera
        
        if let idBandera = bandera!.values.first?.id {
            identificador = idBandera
            viewModel.repositorio.eliminarBandera(idBandera)
            banderaImageView.tag = identificador
        }
        
        
        
        if var resBandera = bandera!.values.first?.bandera{
            
            generaBotones(viewModel, bandera: bandera!.values.first!)
            
            if var nomBandera = bandera?.values.first?.nBandera {
                //generaBotones(viewModel, nBandera: nomBandera)
            } else {
                print("ERROR AL PONER EL NOMBRE")
            }
            if var image = UIImage(named: resBandera){
                banderaImageView.image = image
            } else {
                print("ERROR, NO SE PUDO ACCEDER A LA BANDERA \(resBandera)")
            }
        }
        
    }
    
    
    @IBAction func seleccionaPais(_ sender: UIButton) {
        var id = banderaImageView.tag
        if sender.tag == id {
            resultado.text = "País correcto"
        } else {
            resultado.text = "La cagaste burlancaster"
        }
        
        boton_1.isEnabled = false
        boton_2.isEnabled = false
        boton_3.isEnabled = false
        boton_4.isEnabled = false
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func generaBotones(_ viewModel : BanderasViewModel, bandera : Bandera){
        
        let tempViewModel = viewModel
        
        let nBandera = bandera.nBandera
        let idBandera = bandera.id
        
        //Bandera 1
        let banderaAlt1 = tempViewModel.obtenerDicAleatorio()
        let nombreAlt1 = banderaAlt1!.values.first?.nBandera
        let idAlt1 = banderaAlt1!.values.first?.id
        
        if let idAlt1 = banderaAlt1!.values.first?.id {
            tempViewModel.repositorio.eliminarBandera(idAlt1)
        }
        //Bandera 2
        let banderaAlt2 = tempViewModel.obtenerDicAleatorio()
        let nombreAlt2 = banderaAlt2!.values.first?.nBandera
        let idAlt2 = banderaAlt2!.values.first?.id
        
        if let idAlt2 = banderaAlt2!.values.first?.id {
            tempViewModel.repositorio.eliminarBandera(idAlt2)
        }
        //Bandera 3
        let banderaAlt3 = tempViewModel.obtenerDicAleatorio()
        let nombreAlt3 = banderaAlt3!.values.first?.nBandera
        let idAlt3 = banderaAlt3!.values.first?.id
        
        if let idAlt3 = banderaAlt3!.values.first?.id {
            tempViewModel.repositorio.eliminarBandera(idAlt3)
        }
        
        
        let n_aleatorio = Int.random(in: 1...4)
        
        switch n_aleatorio {
        case 1:
            boton_1.setTitle(nBandera,      for: .normal)
            boton_1.tag = idBandera
            boton_2.setTitle(nombreAlt1,    for: .normal)
            boton_2.tag = idAlt1!
            boton_3.setTitle(nombreAlt2,    for: .normal)
            boton_3.tag = idAlt2!
            boton_4.setTitle(nombreAlt3,    for: .normal)
            boton_3.tag = idAlt3!
        case 2:
            boton_1.setTitle(nombreAlt3,    for: .normal)
            boton_1.tag = idAlt3!
            boton_2.setTitle(nBandera,      for: .normal)
            boton_2.tag = idBandera
            boton_3.setTitle(nombreAlt1,    for: .normal)
            boton_3.tag = idAlt1!
            boton_4.setTitle(nombreAlt2,    for: .normal)
            boton_4.tag = idAlt2!
        case 3:
            boton_1.setTitle(nombreAlt2,    for: .normal)
            boton_1.tag = idAlt2!
            boton_2.setTitle(nombreAlt3,    for: .normal)
            boton_2.tag = idAlt3!
            boton_3.setTitle(nBandera,      for: .normal)
            boton_3.tag = idBandera
            boton_4.setTitle(nombreAlt1,    for: .normal)
            boton_4.tag = idAlt1!
        case 4:
            boton_1.setTitle(nombreAlt1,    for: .normal)
            boton_2.tag = idAlt1!
            boton_2.setTitle(nombreAlt2,    for: .normal)
            boton_3.tag = idAlt2!
            boton_3.setTitle(nombreAlt3,    for: .normal)
            boton_3.tag = idAlt3!
            boton_4.setTitle(nBandera,      for: .normal)
            boton_4.tag = idBandera
        default:
            print("ERROR")
        }
        
    }
    
}
