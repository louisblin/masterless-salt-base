docker_packages_installed:
  pkg.installed:
  - pkg:
    - apt-transport-https
    - ca-certificates
    - software-properties-common
    - python-pip
    - docker-ce

docker-py:
  pip:
  - installed
  - require:
    - pkg: docker_packages_installed

#docker-repo:
#  pkgrepo.managed:
#    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu {{ grains["oscodename"] }} stable
#    - humanname: Docker Package Repository
#    - key_url: https://download.docker.com/linux/ubuntu/gpg
#    - file: /etc/apt/sources.list.d/docker.list
#    - refresh_db: True

docker:
  service:
  - running
  - enable: True
  - watch:
    - pkg: docker_packages_installed
