
DMENU=dmenu-wl
CHOICE=$(ls ~/.password-store/otp | sed 's/.gpg//g' | $DMENU -p "OTP: ")
# if CHOICE is empty, exit
if [ -z "$CHOICE" ]; then
    exit
fi
pass otp "otp/$CHOICE" -c
