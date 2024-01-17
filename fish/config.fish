if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cl="clear"
alias lgit="lazygit"
alias ldocker="lazydocker"
alias conf="z ~/.config"
alias nixos="z ~/nixos"
alias store="z /nix/store"
alias nswitch="sudo nixos-rebuild switch --flake ~/nixos"
alias nswitchi="sudo nixos-rebuild switch --flake ~/nixos --impure"
alias nswitchu="sudo nixos-rebuild switch --flake ~/nixos --update-input nixpkgs --update-input hyprland --update-input stable --update-input nix-gaming --update-input aagl --update-input home-manager --commit-lock-file --upgrade --impure"
alias nau="sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos"
alias nsgc="sudo nix-store --gc"
alias ngc="sudo nix-collect-garbage -d"

# if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]
#   exec Hyprland
# end

set -gx EDITOR hx
set -gx VOLUME_STEP 5
set -gx BRIGHTNESS_STEP 5

set -gx PATH $HOME/.cargo/bin $PATH

set fish_vi_force_cursor
set fish_cursor_default block
set fish_cursor_insert line blink
set fish_cursor_visual underscore blink

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

starship init fish | source
direnv hook fish | source
