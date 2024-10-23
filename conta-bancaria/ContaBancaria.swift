//
//  ContaBancaria.swift
//  conta-bancaria
//
//  Created by Ana Julia Brito de Souza on 23/10/24.
//

import Foundation

class ContaBancaria {
    
    private var cliente: String
    private var num_conta: Int
    private var saldo: Float
    
    init(cliente: String, num_conta: Int, saldo: Float) {
        self.cliente = cliente
        self.num_conta = num_conta
        self.saldo = saldo
    }
    
    init(){
        self.cliente = ""
        self.num_conta = 0
        self.saldo = 0.0
    }
    
    public func getCliente() -> String{
        return self.cliente
    }
    
    public func getNumConta() -> Int{
        return self.num_conta
    }
    
    public func getSaldo() -> Float{
        return self.saldo
    }
    
    public func setSaldo(saldo: Float) {
        self.saldo = saldo
    }
    
    public func sacar(valorRetirado: Float) {
        if valorRetirado > self.saldo {
            print("Saldo indisponivel para essa operacao")
        } else {
            _ = self.saldo - valorRetirado
        }
    }
    
    public func depositar(valorADepositar: Float){
        _  = self.saldo + valorADepositar
    }
    
}
