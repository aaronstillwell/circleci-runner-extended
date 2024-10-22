FROM circleci/runner-agent:machine-3

RUN sudo apt update && \
  sudo apt install -y software-properties-common && \
  sudo add-apt-repository --yes --update ppa:ansible/ansible && \
  sudo apt install -y ansible git && \
  sudo apt-get clean && \
  sudo rm -rf /var/lib/apt/lists/*