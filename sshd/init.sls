ssh:
  pkg.installed

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config
    - template: jinja
    - context:
      port: 8888

sshd:
  service.running:
    - name: ssh
    - watch:
      - file: /etc/ssh/sshd_config
