#!/bin/bash

COMMAND=$1
shift

init() {
	serverspec-init $@;
}

rake(){
	if [${#@} == 0]; then
        /usr/local/bin/rake -T
	else
		/usr/local/bin/rake $@
    fi
}
case "$COMMAND" in
	serverspec-init)
		init
		;;
    init)
		init
		;;
    run)
        rake
        ;;
    rake)
        rake
        ;;
	*)
       echo "usage $0 {init | run [test to run]}"
esac
