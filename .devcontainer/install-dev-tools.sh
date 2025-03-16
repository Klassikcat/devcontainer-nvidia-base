# update apt library
apt-get update
# install Linux tools and Python 3
apt-get install software-properties-common wget curl \
    python3-dev python3-pip python3-wheel python3-setuptools python3-virtualenv git gh -y
# install Python packages
python3 -m pip install --upgrade pip
python3 -m venv .venv
. .venv/bin/activate
pip install uv
uv pip install -r .devcontainer/requirements.txt
# clean up
apt-get install sudo
pip3 cache purge
apt-get autoremove -y
apt-get clean
