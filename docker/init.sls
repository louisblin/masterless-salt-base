docker_packages_installed:
  pkg.installed:
    - pkg:
        apt-transport-https
        ca-certificates
        software-properties-common
        docker-ce

docker-py:
  pip:
    - installed
    - require:
      - pkg: python-pip

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
      - pkg: docker-ce
