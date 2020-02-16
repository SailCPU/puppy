sudo apt-get install git pkg-config libglu1-mesa-dev freeglut3-dev mesa-common-dev ffmpeg libxml2-dev -y
sudo apt-get install libx11-xcb-dev
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
echo $BASE_DIR
export ARCH=x64
mkdir -p $BASE_DIR/install/${ARCH}-install/oss/lib/pkgconfig
export LD_LIBRARY_PATH=$BASE_DIR/install/${ARCH}-install/oss/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$BASE_DIR/install/${ARCH}-install/oss/lib:$LIBRARY_PATH
export PATH=$BASE_DIR/builder/cmake-3.16.4-Linux-x86_64/bin:$PATH
export QMAKE_PATH=/opt/Qt5.14.1/5.14.1/gcc_64/bin/qmake