nginx:
  pkg.installed

/var/www/html/index.nginx-debian.html:
  file.managed:
    - source: salt://website/index.html
    - require:
      - pkg: nginx
