#!/usr/bin/env bash

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 16.19.0
asdf global nodejs 16.19.0

asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
asdf install kubectl 1.21.14
asdf global kubectl 1.21.14

asdf plugin-add vault https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git
ASDF_HASHICORP_OVERWRITE_ARCH_VAULT=amd64 asdf install vault 1.7.9
ASDF_HASHICORP_OVERWRITE_ARCH_TERRAFORM=amd64 asdf install terraform 0.15.3

asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
ASDF_HELM_OVERWRITE_ARCH=amd64 asdf install helm 3.5.4
asdf global helm 3.5.4