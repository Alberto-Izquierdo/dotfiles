HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -e
source ~/.config/zsh-autocomplete/zsh-autocomplete.plugin.zsh

parse_git_commit() {
  if git rev-list -1 HEAD > /dev/null 2>&1 ; then
      git_sha1="|$(git rev-list -1 HEAD | awk '{print substr($0,0,7)}')]"
  else
      git_sha1=''
  fi
  echo "$git_sha1"
}

parse_git_branch() {
    git_status="$(git status 2> /dev/null)"
    pattern="On branch ([^[:space:]]*)"
    if [[ ${git_status} =~ "(working (tree|directory) clean)" ]]; then
        local gitstatuscolor='%F{green}'
    elif [[ ${git_status} =~ "(Changes to be committed)" ]]; then
        local gitstatuscolor='%F{#d75f00}'
    else
        local gitstatuscolor='%F{red}'
    fi
    if [[ ${git_status} =~ ${pattern} ]]; then
      branch=${match[1]}
      branch_cut=${branch:0:35}
      if (( ${#branch} > ${#branch_cut} )); then
          echo "[${gitstatuscolor}${branch_cut}$(parse_git_commit)%F{none}]"
      else
          echo "[${gitstatuscolor}${branch}$(parse_git_commit)%F{none}]"
      fi
    fi
}


setopt PROMPT_SUBST
PROMPT='%B%~ $(parse_git_branch):%b '
