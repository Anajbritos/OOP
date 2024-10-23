//
//  ViewController.swift
//  conta-bancaria
//
//  Created by Ana Julia Brito de Souza on 23/10/24.
//

import UIKit

class Contas: UIViewController {
    
    var bancario = ContaBancaria(cliente: "Ana Julia", num_conta: 9, saldo: 250.00)
    var poupanca = ContaPoupanca(diaRendimento: 2, cliente: "Ana Julia", num_conta: 3, saldo: 400.00)
    var especial = ContaEspecial(limite: 1500.00, cliente: "Ana Julia", num_conta: 6, saldo: 1200.00)
    var bancario2 = ContaBancaria()

    override func viewDidLoad() {
        super.viewDidLoad()
        bancario.sacar(valorRetirado: 20.00)
        poupanca.sacar(valorRetirado: 150)
        especial.sacar(valorRetirado: 400.00)
        
        bancario.depositar(valorADepositar: 250.00)
        poupanca.depositar(valorADepositar: 0.55)
        especial.depositar(valorADepositar: 1000.43)
        
        poupanca.calculaNovoSaldo(
            taxaRendimento: 0.34,
            diasRendimento: poupanca.getDiaRendimento())
        
        print("Cliente \(poupanca.getCliente())\n Conta: \(poupanca.getNumConta())\n Saldo: \(poupanca.getSaldo())")
    }

}

