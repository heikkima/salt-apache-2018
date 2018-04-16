/tmp/jinja-files/demo.txt:
  file.managed:
    - source: salt://jinja-demo/demo.txt
    - makedirs: True
    - template: jinja
    - context:
      text: ' this text came from sls file '

{% for file in ['banana.txt', 'apple.txt', 'tomato.txt'] %}
/tmp/jinja-files/{{file}}:
  file.managed:
    - makedirs: True
    - source: salt://jinja-demo/default.txt
    - template: jinja
    - context:
      filename: {{file}}
{% endfor %}
