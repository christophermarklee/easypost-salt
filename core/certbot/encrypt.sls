
# salt 'rhel8' state.core.certbot.encrypt // to encrypt certbot cert
core-certbot-encrypt-ssl-certs:
  cmd.run:
    - cwd: /etc/letsencrypt/live
    - name: tar -czf - * | openssl enc -e -aes256 -out /srv/salt/core/certbot/files/secured.tar.gz

