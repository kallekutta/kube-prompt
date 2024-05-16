# kube-prompt: A must have for kubectl power users!

Do you work a lot with [kubectl](https://github.com/kubernetes/kubectl)? Do you switch a lot between different clusters and namespaces with [kubectx](https://github.com/ahmetb/kubectx)? Do you sometimes forget in what cluster or namespace you currently are in? Are you tired of running the commands `kubectx` or `kubens` to check this?

**Kube-prompt to the rescue!**

## What is kube-prompt?
Kube-prompt is used to display the current cluster and namespace directly in your shell prompt. This means you don't have to run any commands to check where you are. The information is always there for you without any additional keystrokes.

Example:

![terminal](https://github.com/kallekutta/kube-prompt/assets/20796399/66b3705b-e39d-41ba-8874-cd94b71d70b9)

## Installation
1. Clone this repository
2. Source kube-prompt.sh in your configuration file for your shell prompt
3. Add `$(get_current_config)` to your prompt
4. Restart your terminal to apply the new changes

#### Example theme for [zsh](https://www.zsh.org/) + [oh-my-zsh](https://ohmyz.sh/)
```
source ~/bin/kube-prompt.sh

PROMPT="%(?:%{$fg_bold[green]%}%m:%{$fg_bold[red]%}%m)"
PROMPT+=' %{$fg[yellow]%}$(get_current_config) %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
```
