# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Set up term correctly - particularly for gnome terminal
if [ "$TERM" = "xterm" ] ; then
    if [ -z "$COLORTERM" ] ; then
        if [ -z "$XTERM_VERSION" ] ; then
            echo "Warning: Terminal wrongly calling itself 'xterm'."
        else
            case "$XTERM_VERSION" in
                "XTerm(256)") TERM="xterm-256color" ;;
                "XTerm(88)") TERM="xterm-88color" ;;
                "XTerm") ;;
                *)
                echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
                ;;
            esac
        fi
    else
        case "$COLORTERM" in
            gnome-terminal)
            # Those crafty Gnome folks require you to check COLORTERM,
            # but don't allow you to just *favor* the setting over TERM.
            # Instead you need to compare it and perform some guesses
            # based upon the value. This is, perhaps, too simplistic.
            TERM="gnome-256color"
            ;;
            *)
            echo "Warning: Unrecognized COLORTERM: $COLORTERM"
            ;;
        esac
    fi
fi

export HISTSIZE=5000
export HISTCONTROL=erasedups
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND;history -a"


# User specific aliases and functions
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
