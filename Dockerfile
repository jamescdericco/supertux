# Build a image for use with toolbox (https://containertoolbx.org/)
# that supports building, running, and debugging supertux

# GTK3 is installed to fix a segfault when starting supertux.
# It or one of its dependencies fixes the crash.

FROM --platform=amd64 registry.fedoraproject.org/fedora-toolbox:38
RUN sudo dnf -y install cmake gcc-c++ gdb SDL2{,-devel} libGLEW glew{,-devel} libogg{,-devel} freetype{,-devel} glm-devel zlib{,-devel} SDL2_image{,-devel} libvorbis{,-devel} libcurl{,-devel}.x86_64 openal{,-devel} gtk3
