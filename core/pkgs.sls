
core-pkgs:
  pkg.installed:
    - pkgs:
{% if grains['os_family'] == 'CentOS' %}
      - epel-release
{% endif %}
      - wget
      - tree
      - net-tools
      - openssl
      - java-11-openjdk-headless
      - git
