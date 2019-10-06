include:
  - salt.minion
  - salt.base

base_packages_installed:
  pkg.installed:
    - pkgs:
        - git
        - iotop
        - iptables
        - tmux
        - python-pip
        - vim
        - wget
        - zsh

GMT:
  timezone.system