/home/pi/.dotfiles:
  file.directory:
    - user: pi
    - group: pi
    - mode: 700
    - makedirs: True

pi_dotfiles_repo:
  git.latest:
    - name: https://github.com/louisblin/dotfiles.git
    - target: /home/pi/.dotfiles
    - force_fetch: true
    - force_reset: true

pi_dotfiles_install:
  cmd.run:
    - name: /home/pi/.dotfiles/install -v
    - cwd: /home/pi/.dotfiles
    - onchanges:
        - git: pi_dotfiles_repo
