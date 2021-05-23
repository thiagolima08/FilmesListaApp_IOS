//
//  Cadastro.swift
//  Filmes
//
//  Created by Thiago da Silva Lima on 15/05/21.
//

import Foundation

class Cadastro {
    private var lista: Array<Filme>
    
    init() {
        self.lista = Array<Filme>()
    }
    
    func add(filme:Filme){
        self.lista.append(filme)
    }
    
    func count() ->Int {
        return self.lista.count
    }
    
    func get() -> Array<Filme> {
        return self.lista
    }
    
    func delete(index: Int) {
        self.lista.remove(at: index)
    }
    
}
