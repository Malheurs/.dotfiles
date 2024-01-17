function autostart
    pypr & \
    wpaperd & \
    poweralertd & \
    wl-paste --watch cliphist store & \
    avizo-service & \
    systemctl --user start psi-notify &\
    swayidle -w 
end
