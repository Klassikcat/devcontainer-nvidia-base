# update system
apt-get update
apt-get upgrade -y
# install Linux tools and Python 3
apt-get install software-properties-common wget curl \
    python3-dev python3-pip python3-wheel python3-setuptools -y
# install Python packages
python3 -m venv .venv
. .venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install uv
uv pip install --user -r .devcontainer/requirements.txt
uv pip install marimo[sql]
# clean up
pip3 cache purge
apt-get autoremove -y
apt-get clean
