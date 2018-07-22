export EDITOR='sublime -w'
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[39m\]\h:\[\033[33;1m\]\w/\[\033[m\]\\n$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

function tab_title
{
    echo -n -e "\033]0;${PWD##*/}\007"
}

PROMPT_COMMAND="tab_title ; $PROMPT_COMMAND"

alias tmux='tmux -2'
alias subl='sublime'

# The color designators are as follows:           
#                                                 
# a black                                         
# b red                                           
# c green                                         
# d brown                                         
# e blue                                          
# f magenta                                       
# g cyan                                          
# h light grey                                    
# A bold black, usually shows up as dark grey     
# B bold red                                      
# C bold green                                    
# D bold brown, usually shows up as yellow        
# E bold blue                                     
# F bold magenta                                  
# G bold cyan                                     
# H bold light grey; looks like bright white      
# ix default foreground or background             

# The order of the attributes are as follows:
# 
# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit
