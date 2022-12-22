// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.17;

//address
address wallet = 0xbf4A498E66520bFCDfDbdC8C4D0fCb8fF92Aa0A7;

//boolean
bool ready;
ready = true;

//Número inteiros positivos uint
uint a;
a = 5;

//String
string nome;
nome = "Roberto";

//texto com tamanho específico (bytes)
bytes32 dados;
dados = 'Qualquer dado com tamanho máximo de 32 bytes'

//listas específicas (Arrays)
uint[] lista_de_dados = [1,2,3];

//Chave e valor (mapping)
mapping(address =>uint) saldos;

//Estrutura de dados (struct)
struct User {
    uint id;
    string name;
    string[] products;
}

//variáveis categóricas
enum Cor {
    RED,
    GREEN,
    BLUE
}







