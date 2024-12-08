# Install dependencies for NS3
RUN apt-get update && apt-get install -y \
    g++ python3 python3-pip cmake git mercurial qt5-default \
    libsqlite3-dev libxml2 libxml2-dev openmpi-bin \
    openmpi-common openmpi-doc libopenmpi-dev autoconf \
    cvs bzr unrar

# Clone and build NS3
RUN git clone https://gitlab.com/nsnam/ns-3-dev.git ns-3.38 && \
    cd ns-3.38 && \
    ./ns3 configure --enable-examples --enable-tests && \
    ./ns3 build