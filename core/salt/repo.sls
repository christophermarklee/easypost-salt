
core-salt-repo-gpg:
  cmd.run:
    - name: rpm --import /srv/salt/core/salt/files/SALTSTACK-GPG-KEY.pub

core-salt-repo:
  file.managed:
    - name: /etc/yum.repos.d/salt.repo
    - source: https://repo.saltproject.io/py3/redhat/8/x86_64/latest.repo
    - source_hash: aba9bf900a93cf41fa9b29332348ab9c

