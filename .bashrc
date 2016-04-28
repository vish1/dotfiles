# .bashrc

if [ "$TERM" = "xterm-256color" ] 
then
     export PS1="\[\e[32;1m\]\u\[\e[0m\]@\[\e[35;1m\]\h \[\e[31;1m\]\w\[\e[0m\] > \[\e]30;\h:\W\a\e[28;0t\]"
else if [ "$TERM" = "screen" ]
     then
        # we are in screen  
        export PS1="\[\e[34;1m\]\u\[\e[0m\]@\[\e[34;1m\]\h \[\e[31;1m\]\w\[\e[0m\]\n> "
    else
        #we'r eon the system console or maybe telnetting in
        export PS1="\u@\H: \w> "
     fi        
fi

function get_my_ip () 
{
	ifconfig |grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}'
}
