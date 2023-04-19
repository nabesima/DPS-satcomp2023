FROM satcomp-infrastructure:common

#  Install required softwares
USER root
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y cmake build-essential zlib1g-dev unzip wget curl

# Build DPS
ADD DPS-v.1.4.3-sc2023.tar.gz ./
WORKDIR DPS-v.1.4.3-sc2023
RUN ./build.sh

# Copy DPS executable
RUN cp ./Release/DPS-1.4.3 /DPS-1.4.3-sc2023
RUN chmod +x /DPS-1.4.3-sc2023
