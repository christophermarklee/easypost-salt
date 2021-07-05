
core-certbot-pkgs:
  pkg.installed:
    - pkgs:
      - python39-pip

core-certbot-certbot:
  pip.installed:
    - name: certbot

