apache2:
  pkg.installed

libapache2-mod-php:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - source: salt://apache2/replace.html
    - require:
      - pkg: apache2

/var/www/html2/index.html:
  file.managed:
    - source: salt://apache2/replace2.html
    - require:
      - pkg: apache2
    - makedirs: True

/etc/apache2/mods-available/php7.0.conf:
  file.managed:
    - source: salt://apache2/php7.0.conf
    - require:
      - pkg: libapache2-mod-php

/etc/apache2/sites-enabled/000-default.conf:
  file.managed:
    - source: salt://apache2/000-default.conf
    - require:
      - pkg: apache2

/etc/apache2/mods-enabled/userdir.conf:
 file.symlink:
   - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
 file.symlink:
   - target: ../mods-available/userdir.load

apache2service:
 service.running:
   - name: apache2
   - watch:
     - file: /etc/apache2/mods-enabled/userdir.conf
     - file: /etc/apache2/mods-enabled/userdir.load
     - file: /etc/apache2/mods-available/php7.0.conf
     - file: /etc/apache2/sites-enabled/000-default.conf
