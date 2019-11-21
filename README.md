# Preparation
Clone to repository:

`git clone https://github.com/fatherlinux/ubi-micro`

Change into the directory:

`cd ubi-micro`

# Build & Run
Build ubi-micro:

`podman build -t ubi-micro -f Containerfile`

Simple run test:

`podman run -it ubi-micro bash`

# Build Stage 1 (AKA the Dev Server)

Build ubi-micro-build:
`podman build --target ubi-micro-build -t quay.io/fatherlinux/ubi-micro-build -f Containerfile`
