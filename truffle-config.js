module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",//this is the local host
      port: 7545, //here runs ganache
      network_id: "*" // Match any network id
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}