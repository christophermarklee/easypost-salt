
core-httpd-pkgs:
  pkg.installed:
    - pkgs:
      - httpd
      - mod_ssl

core-httpd-easypost-welcome-conf:
  file.absent:
    - name: /etc/httpd/conf.d/welcome.conf

core-httpd-easypost-vhost:
  file.managed:
    - name: /etc/httpd/conf.d/easypost.conf
    - source: salt://core/httpd/files/secure.conf

core-httpd-service:
  service.running:
    - name: httpd
    - enable: True
    - reload: True
    - watch:
      - file: core-httpd-easypost-vhost

