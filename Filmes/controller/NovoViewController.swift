//
//  NovoViewController.swift
//  Filmes
//
//  Created by Thiago da Silva Lima on 15/05/21.
//

import UIKit

class NovoViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    
    @IBOutlet weak var lbNota: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBAction func slNota(_ sender: UISlider) {
        let valor = Int(sender.value)
        lbNota.text = "\(valor)"
    }
    
    @IBOutlet weak var swIndicado: UISwitch!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var lbVezes: UILabel!
    @IBAction func stVezes(_ sender: UIStepper) {
        lbVezes.text = Int(sender.value).description
    }

    
    var cadastro: Cadastro!
    var filmeParaEditar: Filme!
    
    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text!
        let nota = Int(self.slider.value)
        let foiIndicado = self.swIndicado.isOn ?  true : false
        let quantAssistiu = Int(self.stepper.value)
        
        let filme = Filme(nome:nome, nota: nota, foiIndicado: foiIndicado, quantAssistiu: quantAssistiu)
        print(filme.description)
        self.cadastro = (UIApplication.shared.delegate as! AppDelegate).cadastro
        self.cadastro.add(filme: filme)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.wraps = true
        stepper.autorepeat = true
    }

    
    
}
