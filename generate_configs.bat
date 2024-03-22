:: This script creates ETF2L config packages in the same way as it were made before being released on GitHub
cd ./configs

curl https://whitelist.tf/download/etf2l_6v6.txt -o etf2l_whitelist_6v6.txt
curl https://whitelist.tf/download/etf2l_9v9.txt -o etf2l_whitelist_9v9.txt
curl https://whitelist.tf/download/etf2l_bball.txt -o etf2l_whitelist_bball.txt
curl https://whitelist.tf/download/etf2l_ultiduo.txt -o etf2l_whitelist_ultiduo.txt

powershell Compress-Archive -Force -Path etf2l*.cfg,etf2l_whitelist_*.txt -DestinationPath ../etf2l_configs.zip
powershell Compress-Archive -Force -Path *.cfg,etf2l_whitelist_*.txt -DestinationPath ../etf2l_configs_extra.zip