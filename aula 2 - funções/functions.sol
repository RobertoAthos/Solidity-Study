// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;


contract Name {

    //Parâmetros
    function soma(uint a, uint b) external pure returns(uint){
        return a + b;
    }

    // sem parâmetros
    function actualblock() external view returns(uint){
        return block.number;
    }


    //Visibilidade
    //external => função visível "de fora" do contrato
    //internal => função visível de dentro do contrato e de contratos derivados deste
    //public => função visível tanto dentro do contrato quanto externamente
    //private => função visível somente pelo contrato principal (que contém essa função)

    //Etado
    //view => função irá apenas ler os dados e não alterálos
    //pure => Não irá nem mesmo ler os dados, é bastante usado para fazer cálculos e retornar resultados


    //Modificadores
    function somenteAdmAltera(uint idade) external somenteadm() returns(uint){
        minha_idade = idade;
        return minha_idade;
    }
        modifier somenteadm {
            require(msg.sender == carteira_adm);
            _;
        }
    }

    //Funções pagáveis (payable)
    function investe() external payable{
        //corpo da função
    }

    //Return e Returns => para que a função retorne algum dado, é preciso especiicar o tipo de dado
    //que irá retornar, por isso usa-se "returns" de parâmetro nas funções que precisam retornar alguma coisa
    
}

