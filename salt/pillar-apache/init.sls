apache2:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - source: salt://pillar-apache/index.html
    - template: jinja
    - context:
      msg: {{ pillar['msg'] }}
