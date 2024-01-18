uname -ra
sudo apt-get update --allow-releaseinfo-change
sudo apt-get upgrade
sudo apt install python3-pip git build-essential libnuma-dev
pip3 install tqdm
mkdir lab01
cd lab01
git clone https://github.com/Birilio/lab01RT.git
git clone https://git.kernel.org/pub/scm/utils/rt-tests/rt-tests.git/
cd rt-tests
git checkout stable/v1.0
make all
make install
