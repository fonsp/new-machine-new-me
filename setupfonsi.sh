
# disable SSH banner

cd ~
touch .hushlogin

# install Julia

cd ~

JULIA_VERSION=1.7.0-rc1

JULIA_MAJOR_VERSION="$(echo "$JULIA_VERSION" | awk '{split($0,a,"."); print a[1]}')"
JULIA_MINOR_VERSION="$(echo "$JULIA_VERSION" | awk '{split($0,a,"."); print a[2]}')"
JULIA_PATCH_VERSION="$(echo "$JULIA_VERSION" | awk '{split($0,a,"."); print a[3]}')"
[[ -z "$JULIA_PATCH_VERSION" ]] && JULIA_VERSION="${JULIA_VERSION}.0"


wget https://julialang-s3.julialang.org/bin/linux/x64/$(echo $JULIA_MAJOR_VERSION).$(echo $JULIA_MINOR_VERSION)/julia-$(echo $JULIA_VERSION)-linux-x86_64.tar.gz
tar -xvzf julia-$JULIA_VERSION-linux-x86_64.tar.gz
rm julia-$JULIA_VERSION-linux-x86_64.tar.gz

echo ""
echo "Your password is fons"
echo ""

sudo ln -fs /home/fons/$JULIA_VERSION/bin/julia /usr/bin/julia

julia --version

cd ~

# git clone https://github.com/fonsp/Pluto.jl.git
# git clone https://github.com/fonsp/PlutoUI.jl.git

# julia -e "import Pkg; Pkg.develop(path=\"Pluto.jl\"); Pkg.develop(path=\"PlutoUI.jl\"); import Pluto; import PlutoUI"

