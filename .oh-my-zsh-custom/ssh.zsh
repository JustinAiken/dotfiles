h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})

zstyle ':completion:*:(ssh|scp|sftp|rsh|rsync):*' hosts $h
