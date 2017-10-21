FROM beginor/ubuntu-china:16.04

LABEL MAINTAINER="beginor <beginor@qq.com>"

# Install mono from xamarin then cleanup.
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
    && echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list \
    && apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends mono-devel \
    && rm -rf /var/lib/apt/lists/*

# Default command
CMD [ "mono", "--version" ]
