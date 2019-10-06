{% for user, home in {'root': '/root', 'pi': '/home/pi'} | dictsort %}
{{ home }}/.dotfiles:
  file.directory:
    - user: {{ user }}
    - group: {{ user }}
    - mode: 700
    - makedirs: True

{{ user }}_dotfiles_repo:
  git.latest:
    - name: https://github.com/louisblin/dotfiles.git
    - target: {{ home }}/.dotfiles
    - force_fetch: true
    - force_reset: true

{{ home }}/.dotfiles/install -v:
  cmd.run:
    - cwd: {{ home }}/.dotfiles
    - onchanges:
        - git: {{ user }}_dotfiles_repo
{% endfor %}