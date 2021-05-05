FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get update && \
    sudo apt-get install -y python3-pip python3-tk tk-dev && \
    sudo rm -rf /var/lib/apt/lists/*

RUN pyenv uninstall -f 3.8.9 && \
    pyenv install 3.8.9

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install pillow
