# add fonsi

adduser --disabled-password --gecos "" fons
usermod -aG sudo fons

mkdir /home/fons/.ssh
cp /root/.ssh/authorized_keys /home/fons/.ssh/

chown -R fons:fons /home/fons/.ssh
chmod 700 /home/fons/.ssh
chmod 600 /home/fons/.ssh/authorized_keys

su - fons

# disable SSH banner

cd ~
touch .hushlogin

# install Julia

cd ~

JULIA_NAME=julia-1.5.0-rc1

wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/$(echo JULIA_NAME)-linux-x86_64.tar.gz
tar -xvzf $JULIA_NAME-linux-x86_64.tar.gz
rm $JULIA_NAME-linux-x86_64.tar.gz

ln -s /home/fons/$JULIA_NAME/bin/julia /usr/bin/julia

julia --version

# clone my WIP

cd ~

git clone https://github.com/fonsp/Pluto.jl.git
git clone https://github.com/fonsp/PlutoUI.jl.git

julia -e "import Pkg; Pkg.dev(path=\"Pluto.jl\"); Pkg.dev(path=\"PlutoUI.jl\"); import Pluto; import PlutoUI"

