const assert = require('assert')
const ganache = require('ganache-cli')
const Web3 = require('web3') //constructor function
const {interface, bytecode} = require('../compile')

const web3 = new Web3(ganache.provider()) // cria ums instância da web3 e conecta à nossa rede local

let accounts
let inbox

beforeEach(async()=>{
    // 1-fetch da lista com todas as contas
    accounts = await web3.eth.getAccounts()
    //Usar uma das contas para fazer o deploy do contrato
    inbox = await new web3.eth.Contract(JSON.parse(interface))
        .deploy({ data: bytecode})
        .send({from: accounts[0], gas: '1000000'})
})

describe('inbox', ()=>{
    it('deploys a contract', ()=>{
        assert.ok(inbox.options.address)
    })
    it("has a default message", async () => {
        const message = await inbox.methods.message().call();
        assert.equal(message, "Hi there!");
    }); 
    it('can change the message', async () =>{
        await inbox.methods.setMessage('bye').send({from:accounts[0]})
        const message = await inbox.methods.message().call()
        assert.equal(message, 'bye')
    })
})
