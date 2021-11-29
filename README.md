# neovim config

## Prerequisites

### tools

ripgrep

npm -i -g prettier

lua formatter

``` bash
git clone --recurse-submodules https://github.com/Koihik/LuaFormatter.git
cd LuaFormatter 
mkdir build && cd build
cmake ..
make -j $(nproc) && make install
```

lua ls

``` bash
git clone https://github.com/sumneko/lua-language-server ~/.config/nvim/ls/lua-language-server 
cd lua-language-server
git submodule update --init --recursive
cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

# language server is in lua-language-server/bin/Linux/lua-language-server
```

### install packer

``` bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
