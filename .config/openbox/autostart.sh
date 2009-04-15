# This shell script is run before Openbox launches.
# Environment variables set here are passed to the Openbox session.

# Set a background color
#BG=""
#if which hsetroot >/dev/null; then
#    BG=hsetroot
#else
#    if which esetroot >/dev/null; then
#	BG=esetroot
#    else
#	if which xsetroot >/dev/null; then
#	    BG=xsetroot
#	fi
#    fi
#fi
#test -z $BG || $BG -solid "#303030"



# Preload stuff for KDE apps
if which start_kdeinit >/dev/null; then
  LD_BIND_NOW=true start_kdeinit --new-startup +kcminit_startup &
fi

(sleep 3 && pypanel) &
(sleep 7 && sonata --hidden) &

