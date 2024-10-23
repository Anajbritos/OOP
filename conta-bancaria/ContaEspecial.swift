//
//  ContaEspecial.swift
//  conta-bancaria
//
//  Created by Ana Julia Brito de Souza on 23/10/24.
//

import Foundation

class ContaEspecial: ContaBancaria {
    
    private var limite: Float
    
    init(limite: Float, cliente: String, num_conta: Int, saldo: Float) {
        self.limite = limite
        super.init(
            cliente: cliente,
            num_conta: num_conta,
            saldo: saldo
        )
    }
    
    public func getLimite() -> Float{
        return self.limite
    }
    
    override func sacar(valorRetirado: Float) {
        _ = getSaldo() - valorRetirado
    }

}
