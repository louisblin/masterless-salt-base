include:
  - salt.minion
  - salt.base

pkg.installed:
  - pkgs:
      git
      iotop
      iptables
      python-pip
      wget
      timezone

pkg.purged:
  - pkgs:
      failban
      sysdig
      screen
      ntp

GMT:
  timezone.system