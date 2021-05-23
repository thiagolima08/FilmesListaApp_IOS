//
//  ViewController.swift
//  Filmes
//
//  Created by Thiago da Silva Lima on 15/05/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var lbQuantidade: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.lbQuantidade.text = "Thiago Lima"
    }

}

