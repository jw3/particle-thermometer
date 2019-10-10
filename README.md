particle thermometer
===


### dev
- `conan install . -if cmake-build-debug -s compiler.version=5`
- `./build.sh photon`
- `./build-photon/flash firmware usb`

### config
- `docker run --rm -it --privileged -v /dev:/dev ctcoss/particle-cli identify`
- `docker run --rm -it --privileged -v /dev:/dev ctcoss/particle-cli serial monitor`
- `docker run --rm -it --privileged -v /dev:/dev --entrypoint="" ctcoss/particle-cli bash`
