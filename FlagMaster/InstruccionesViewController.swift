//
//  InstruccionesViewController.swift
//  FlagMaster
//
//  Created by Julen García Gonzalo on 10/6/24.
//

import UIKit

class InstruccionesViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let instrucciones = """
                            Bienvenido al juego Flagmaster. Este juego consiste en adivinar el nombre del país de la bandera que aparece en pantalla. En total son 5 banderas aleatorias y cada vez que acabes de adivinar esas 5 banderas te aparecerá el número de banderas acertadas y la puntuación que has tenido, ya que cada bandera tiene una puntuación la cual ganarás al acertar el país de la bandera. Esta puntuación se puede ver en el apartado "Banderas", donde aparecen todas las banderas que te pueden salir en el juego con el nombre del país y la puntuación que tiene.
                            """
        
        texto.text = instrucciones
    }
    

}
