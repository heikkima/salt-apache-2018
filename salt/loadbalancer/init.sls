nginx:
  pkg.installed

/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://loadbalancer/default
    - require:
      - pkg: nginx

nginxService:
  service.running:
    - name: nginx
    - watch:
      - file: /etc/nginx/sites-available/default
