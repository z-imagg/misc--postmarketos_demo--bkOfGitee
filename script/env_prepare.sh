#!/bin/bash

cd /app2/postmarketos_demo/

python3 -m venv .venv
source .venv/bin/activate

#pip install pmbootstrap #报错信息中有版本列表，现在是2024年7月31日，最新版本是2.1.0
# pip install pmbootstrap==2.1.0

git -b 2.3.0 clone https://gitlab.com/postmarketOS/pmbootstrap.git /app2/
sudo ln -s "/app2/pmbootstrap/pmbootstrap.py" /usr/bin/pmbootstrap
which pmbootstrap #/usr/bin/pmbootstrap
pmbootstrap --version #2.3.0
