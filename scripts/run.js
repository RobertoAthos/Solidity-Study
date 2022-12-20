const main = async () => {
    //Esse código vai compilar nosso contrato e gerar as pastas necessárias que precisamos para trabalhar
    // com nosso contrato depois da pasta artifacts
    const waveContractFactory = await hre.ethers.getContractFactory("WavePortal");

    //O harhat vai criar uma conexão local com Ethereum, apenas para esse contrato
    //Depois que o script for completado, a conexão local irá se destruir, então toda vez que rodamos um contrato, irá atualizar a blockchain, é como se fosse atualizar o server local 
    const waveContract = await waveContractFactory.deploy();

    //Aqui espera o contrato está oficialmente lançado na blockchain, após isso o constructor irá rodar o nosso código
    await waveContract.deployed();

    //esse código vai nos dá o endereço do contrato enviado, esse endereço é responsável
    // por achar nosso contrato na blockchain
    console.log("Contract deployed to:", waveContract.address);
  };

  const runMain = async () => {
    try {
      await main();
      process.exit(0); // exit Node process without error
    } catch (error) {
      console.log(error);
      process.exit(1); // exit Node process while indicating 'Uncaught Fatal Exception' error
    }
    // Read more about Node exit ('process.exit(num)') status codes here: https://stackoverflow.com/a/47163396/7974948
  };
  
  runMain();

  //HardHat & hre
  // hre é um objeto contendo todas as funcionalidades do hardhat quando estamos realizando uma tarefa, teste ou script. Hardhat é HRE

  