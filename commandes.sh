#!/bin/bash
apt update
apt install wget -y
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.64/lolMiner_v1.64_Lin64.tar.gz
tar -xzvf lolMiner_v1.64_Lin64.tar.gz
echo -e '#!/bin/bash\nPOOL=flux-eu.minerpool.org:2033\nWALLET=t1JubwPEYABAeDNBWJbYxFFcVnRvXGTfbB2.RIG2_Linux\ncd "$(dirname "$0")"\n./lolMiner --algo FLUX --pool $POOL --user $WALLET $@' > 1.64/mine_flux.sh
1.64/mine_flux.sh
