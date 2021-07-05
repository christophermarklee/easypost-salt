
base:
  '*':
    - core.pkgs
  'rhel8_01':
    - core.salt.master
    - core.certbot
    - core.jenkins
    - core.httpd

  'centos8_01':
    - easypost.pkgs
