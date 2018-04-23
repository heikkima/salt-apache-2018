/tmp/pillar/pillar.txt:
  file.managed:
    - makedirs: True
    - source: salt://default-pillar/default.txt
    - template: jinja
    - context:
      secret: {{ pillar.get('secret', 'password') }}
