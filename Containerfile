#
# Version 1
FROM registry.access.redhat.com/ubi8/ubi AS ubi-micro-build
MAINTAINER Scott McCarty smccarty@redhat.com
RUN mkdir -p /mnt/rootfs
RUN yum install --installroot /mnt/rootfs coreutils-single glibc-minimal-langpack --releasever 8 --setopt install_weak_deps=false -y
RUN rm -rf /mnt/rootfs/var/cache/*
RUN ls -alh /mnt/rootfs/var/cache

FROM scratch AS ubi-micro
COPY --from=ubi-micro-build /mnt/rootfs/ /
CMD /bin/sh
