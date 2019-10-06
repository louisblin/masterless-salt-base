salt-minion:
  pkg:
  - latest
  service:
  - dead
  - enable: False

# TODO: re-enable this later on
/etc/cron.d/salt-masterless:
  file.absent:
  - source: salt://salt/config/etc/cron.d/salt-masterless
