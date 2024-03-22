#!/bin/bash
## This script creates ETF2L config packages in the same way as it were made before being released on GitHub
cd ./configs


wget https://whitelist.tf/download/etf2l_6v6.txt -O etf2l_whitelist_6v6.txt
wget https://whitelist.tf/download/etf2l_9v9.txt -O etf2l_whitelist_9v9.txt
wget https://whitelist.tf/download/etf2l_bball.txt -O etf2l_whitelist_bball.txt
wget https://whitelist.tf/download/etf2l_ultiduo.txt -O etf2l_whitelist_ultiduo.txt

zip -FSrj ../etf2l_configs.zip etf2l*.cfg etf2l_whitelist_*.txt
zip -FSrj ../etf2l_configs_extra.zip *.cfg etf2l_whitelist_*.txt
