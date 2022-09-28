if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
pyenv init - | source
status --is-interactive; and source (pyenv virtualenv-init -|psub)
