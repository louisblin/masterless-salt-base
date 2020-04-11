include:
  - salt.minion
  - salt.base

base_packages_installed:
  pkg.installed:
    - pkgs:
        - git
        - iotop
        - iptables
        - python-pip
        - ripgrep
        - tmux
        - vim
        - wget
        - zsh

GMT:
  timezone.system
