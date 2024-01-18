uname -ra
sudo apt-get update --allow-releaseinfo-change
sudo apt-get upgrade
sudo apt install python3-pip git build-essential libnuma-dev i2c-tools python-smbus
sudo pip3 install tqdm adafruit-pca9685
sudo raspi-config nonint do_i2c 0
mkdir lab01
cd lab01
git clone https://github.com/Birilio/lab01RT.git
git clone https://git.kernel.org/pub/scm/utils/rt-tests/rt-tests.git/
cd rt-tests
git checkout stable/v1.0
make all
make install
sudo i2cdetect -y 1
