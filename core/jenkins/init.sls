
# Jenkins (LTS)
# https://pkg.jenkins.io/redhat-stable/

core-jenkins-repo-gpg:
  cmd.run:
    - name: rpm --import /srv/salt/core/jenkins/files/jenkins.io.key

core-jenkins-repo:
  file.managed:
    - name: /etc/yum.repos.d/jenkins.repo
    - source: https://pkg.jenkins.io/redhat-stable/jenkins.repo
    - source_hash: 669c3683fba107d4779dd614a7c8b8b3

core-jenkins-service:
  service.running:
    - name: jenkins
    - enable: True
    - reload: True
    - watch:
      - file: /var/lib/jenkins/config.xml

