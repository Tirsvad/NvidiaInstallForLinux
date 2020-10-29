# ensure we have the needed packages
apt -qq install pkg-config
apt -qq install libglvnd-dev
apt -qq install linux-headers-$(uname -r) build-essential

# Download and install driver
curl -L https://us.download.nvidia.com/XFree86/Linux-x86_64/450.80.02/NVIDIA-Linux-x86_64-450.80.02.run -o nvidiadriver.run
bash nvidiadriver.run
update-initramfs -u
systemctl set-default graphical.target