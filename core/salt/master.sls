
include:
  - core.salt.repo

core-salt-master-conf:
  file.managed:
    - name: /etc/salt/master
    - source: salt://core/salt/files/master

core-salt-master:
  pkg.installed:
    - pkgs:
      - salt-master
  service.running:
    - name: salt-master
    - enable: True
    - reload: True
    - watch:
      - file: core-salt-master-conf

