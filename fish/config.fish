load_nvm >/dev/stderr

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME /Users/pedronauck/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

alias py3="python3"
alias gpl="git pl"
alias gss="git stash save -u"
alias gsp="git stash apply"
alias gpb="git push origin (git rev-parse --abbrev-ref HEAD)"
alias gud="~/.config/functions/update_deps.fish"
alias dc="docker container prune && docker volume prune"
alias zel="zellij --layout ~/.config/zellij/layouts/default.kdl"
alias pm="pnpm"
alias pmi="pnpm install"
alias pma="pnpm add"
alias pmr="pnpm remove"
alias lzvim="NVIM_APPNAME=lazyvim nvim"
alias tmux="tmux -2"
alias tms="tmux new-session -s"
alias la="exa -la"
alias mtf="rm -rf **/**/node_modules; pnpm store prune; rm -rf ~/.pnpm-store; rm -rf pnpm-lock.yaml"

export PATH="$HOME/.fuelup/bin:$PATH"
export PATH="$PATH:/Users/pedronauck/.foundry/bin"
export PATH="$PATH:/Users/pedronauck/.local/bin:$PATH"

function git_prune
    git fetch --prune --all
    set -l deleted_branches (git branch -vv | grep ": gone]" | awk '{print $1}')
    if [ (count $deleted_branches) -eq 0 ]
        echo "No branches to delete"
    else
        for branch in $deleted_branches
            git branch -D $branch
        end
    end
end

function docker_reset
    docker system prune -f
    docker stop (docker ps -a -q)
    docker container prune
    docker volume prune
end

function gb
    set -l dir ""
    for i in (seq 1 $argv[1])
        set dir "$dir../"
    end
    cd $dir
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set -x PRETTIERD_DEFAULT_CONFIG "~/.config/nvim/custom/.prettierrc.json"

zoxide init fish | source
