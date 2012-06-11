# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/opt/AndroidSDK:/opt/AndroisSDK/tools
JAVA_HOME=/usr/java/latest
CVSROOT=:pserver:pknox-kennedy@vishnu.eng.telsis.local:/var/lib/cvs

export PATH JAVA_HOME CVSROOT


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session
