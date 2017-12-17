## Recomended setup for consensus nodes

#### Remote access
Remote access to machines should be restricted to SSH using public-key with physical Yubico 4/NEO keys.

#### Hardware
Nodes should not be run in shared machines for security concerns.
Prefered form is to run the nodes with colocation in high security datacenters like Deltalis, Equinix and A1 Arsenal. The hardware configurations for the IaaS providers below can serve as a guideline of expectations for 2018.

Since consensus nodes are the ones computing the network hardware requirements need to be reviewed periodically to guarantee that performance is optimal.

If colocation is not possible the recomended IaaS providers and configurations are listed bellow:

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
Is adviced the use of a physical OpenPGP SmartCard for SSH authentication. We recomend Yubikey 4.
For more about the habilities onf PGP on Yubikey refer to [official documentation](https://developers.yubico.com/PGP/).

 - Full [Windows guide](https://developers.yubico.com/PGP/SSH_authentication/Windows.html)
 - Full [Linux/MacOS](https://github.com/drduh/YubiKey-Guide)

After add to your key to the SmartCard enabled authentication agent, gpg-agent comes bundled in gpg2 - we recomend that.

#### Passwords
Use a password manager to hold every password on this setup (Lastpass and Dashlane are recommended). All services should be setup with 2FA enabled.

All passwords should be considered strong (use this [lastpass solution](https://lastpass.com/generatepassword.php)).

## Service provider specific configuration:

On the provider firewall (outside OS settings) setup for block all and add exceptions to ports 22 and 10333 only.
If other services shared a account please be sure to place the consensus node in a anti-affinity group with isolated hypervisor.
 
## Linux server configuration
 
Every node needs 2 managers, located in different jurisdictions. Each should have a dedicated user able to login into the system and a third consensus user (not acessible by SSH) should be the only with access to the private keys for the consensus node.

on first login give a strong password to root, you will only need this if sudo password is lost (or to revoke those):
```shell
su (or sudo su on Ubuntu)
passwd
```

update packages while in su:

```shell
apt-get update
apt-get upgrade
```

still in su add managers users:

```shell
adduser canesin
mkdir
```

