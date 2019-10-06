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
        - wget

base_packages_purged:
  pkg.purged:
    - pkgs:
        - failban
        - sysdig
        - screen
        - ntp

GMT:
  timezone.system