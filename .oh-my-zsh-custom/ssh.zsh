h=(${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})

zstyle ':completion:*:(ssh|scp|sftp|rsh|rsync):*' hosts $h
zstyle ':completion:*:(ssh|scp|sftp|rsh|rsync):*' ignored-patterns 'ec2*.compute.amazonaws.com' 'heroku.*'
