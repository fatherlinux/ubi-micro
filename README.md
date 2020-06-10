# Preparation
Clone to repository:

`git clone https://github.com/fatherlinux/ubi-micro`

Change into the directory:

`cd ubi-micro`

# ubi8 Build & Run
Build ubi8-micro:

`podman build -t ubi8-micro -f ubi8-micro`

Simple run test:

`podman run -it ubi8-micro bash`

# ubi7 Build & Run
Build ubi7-micro:

`podman build -t ubi7-micro -f ubi7-micro`

Simple run test:

`podman run -it ubi7-micro bash`

# Build Stage 1 (AKA the Dev Server)

Build ubi-micro-build:
`podman build --target ubi-micro-build -t quay.io/fatherlinux/ubi-micro-build -f ubi8-micro`
