#!/bin/bash

ff() {
	find . -type f -iname "*$1*" -not -name "*.svn*" 
}

ft() {
	find . -type f -iname "*.$1" -not -name "*.svn*" 
}

fd() { 
	find . -type d -iname "*$1*" -not -name "*.svn*" 
}

vv() {
	eval "$@" | vim -R -
}
