//
//  ContaPoupanca.swift
//  conta-bancaria
//
//  Created by Ana Julia Brito de Souza on 23/10/24.
//

import Foundation

class ContaPoupanca: ContaBancaria {
    
    private var diaRendimento: Int
    
    init(diaRendimento: Int, cliente: String, num_conta: Int, saldo: Float) {
        self.diaRendimento = diaRendimento
        super.init(
            cliente: cliente,
            num_conta: num_conta,
            saldo: saldo
        )
    }
    
    public func getDiaRendimento() -> Int {
        return self.diaRendimento
    }
    
    public func calculaNovoSaldo(taxaRendimento: Float, diasRendimento: Int){
        let atualizacao = (taxaRendimento * Float(diasRendimento) * getSaldo())
        let atualizaSaldo = getSaldo() + atualizacao
        setSaldo(saldo: atualizaSaldo)
    }
    
}
