Update package index files
```bash
sudo apt-get update
```


Install dependencies
```bash
sudo apt-get install git cmake libboost-system-dev libboost-thread-dev libglu1-mesa-dev libwxgtk3.0-dev libarchive-dev freeglut3-dev libxmu-dev libxi-dev
```

Clone the project
```bash
git clone https://github.com/hjnilsson/rme.git
```

Prepare build directory and build
```bash
mkdir build && cd build && cmake .. && make -j `nproc`
```
Run the editor
```bash
./rme
```
