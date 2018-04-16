/home/ubuntu/tekstitesti.txt:
  file.managed:
    - source: salt://text/text.txt
    - template: jinja
    - context:
      world: everybody
