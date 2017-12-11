## Recomended setup for consensus nodes

### Minimum requirements

#### Passwords
All passwords should be considered strong using this [lastpass solution](https://lastpass.com/generatepassword.php)

#### Remote access
Remote access to machines should be restricted to SSH using public-key with physical Yubico 4/NEO keys.

#### Hardware
Nodes should not be run in shared machines for security concerns.
Prefered form is to run the nodes with colocation in high security datacenters like Deltalis, Equinix and A1 Arsenal. The hardware configurations for the IaaS providers below can serve as a guideline of expectations for 2018.

Since consensus nodes are the ones computing the network hardware requirements need to be reviewed periodically to guarantee that performance is optimal.

- [OVH EG-32](https://www.ovh.com/us/dedicated-servers/infra/1801eg02.xml)
  - CPU: Intel  Xeon E3-1270v6 - 4c/8t - 3.8GHz
  - RAM: 32GB DDR4 ECC 2133 MHz
  - SSD: softraid-1 2x450GB NVMe
  - NET: 1 Gbps
 
- [Packet Workhorse](https://www.packet.net/bare-metal/servers/type-1/)
  - CPU: Intel® Xeon E3-1240v5 - 4c/8t - 3.5GHz
  - RAM: 32 GB DDR3 ECC 1333 MHz
  - SSD: softraid-1 2x120GB Enterprise SSD
  - NET: 2 x 1 Gbps Bonded
 
- [Liquidweb](https://cart.liquidweb.com/configure/single-processor-1275v6)
  - CPU: Intel Xeon E3-1275v6 - 4c/8t - 3.8GHz
  - RAM: 32 GB DDR4 ECC
  - SSD: softraid-1 2x240GB Enterprise SSD
  - NET: 2 x 1 Gbps Bonded
 
 ## SSH authentication keys
 Yubikey 4/NEO have support for OpenPGP, that can be used for logging in to remote SSH servers.
 Guides for all main Operational Systems [can be found here](https://developers.yubico.com/PGP/SSH_authentication/)
 
 ## Ubuntu server configuration
 
 
  
