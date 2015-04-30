# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export TOMCAT_HOME="$HOME/Software/apache-tomcat-8.0.18"
export ECLIPSE_HOME="$HOME/Software/eclipse"
export GRAILS_HOME="$HOME/Software/grails-3.0.1"
#export GRAILS_HOME="$HOME/Software/ggts-bundle/grails-2.4.4"
export PATH="$HOME/Software/gfms/bin:$HOME/Software/glassfish4/bin:$HOME/Software/apache-tomcat-8.0.18/bin:$HOME/Software/activator-1.3.2-minimal:$HOME/Software/eclipse:$GRAILS_HOME/bin:$HOME/Software/ggts-bundle/ggts-3.6.4.RELEASE:$PATH"
export CLASSPATH="$TOMCAT_HOME/lib:/usr/share/java/mysql-connector-java-5.0.8-bin.jar:$CLASSPATH"
export DEPLOYMENT="dev"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
