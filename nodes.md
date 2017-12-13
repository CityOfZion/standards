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

If colocation is not a possible the recomended IaaS providers and configurations are listed bellow:

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
Is required the use a OpenPGP SmartCard for SSH authentication. We recomend Yubikey 4/NEO.
 - Full [Windows guide](https://developers.yubico.com/PGP/SSH_authentication/Windows.html)
 - Full [Linux/MacOS](https://github.com/drduh/YubiKey-Guide)
 
#### Quick guide 
1 - Download and install GPG, on Windows [GPG4Win]((https://www.gpg4win.org)). We will use GPG Kleopatra to confirm key.

2 - With the key on USB open command window and type:
```bash
gpg --card-edit
gpg/card> admin
gpg/card> generate
```
then follow the on screen instructions to generate the key, default Admin PIN is 12345678 and PIN 123456, we strongly recommend you change those.

After generating the keys, confirm that keys are good and stored on the SmartCard


 
 ## Ubuntu server configuration
 
 
  
