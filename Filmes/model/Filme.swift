//
//  Filme.swift
//  Filmes
//
//  Created by Thiago da Silva Lima on 15/05/21.
//

import Foundation

class Filme: NSObject {
    var nome: String
    var nota: Int
    var foiIndicado: Bool
    var quantAssistiu: Int
    
    init(nome:String, nota:Int, foiIndicado:Bool, quantAssistiu:Int) {
        self.nome = nome
        self.nota = nota
        self.foiIndicado = foiIndicado
        self.quantAssistiu = quantAssistiu
    }
    
    override var description: String{
        return "\(self.nome) - \(self.nota) - \(self.foiIndicado) - \(self.quantAssistiu)"
    }
}
