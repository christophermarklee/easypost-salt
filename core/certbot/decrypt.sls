
# salt 'rhel8' state.core.certbot.decrypt // to decrypt certbot certs
core-certbot-dencrypt-ssl-certs:
  cmd.run:
    - name: openssl enc -d -aes256 -in /srv/salt/core/certbot/files/secured.tar.gz | tar xz /etc/letsencrypt/live

