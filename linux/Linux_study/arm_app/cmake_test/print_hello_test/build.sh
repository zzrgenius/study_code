# sudo make distclean
sudo rm -rf build
mkdir build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../arm_linux_setup.cmake ..
make && 
echo "build done"

    # make && sudo  make install && /
 