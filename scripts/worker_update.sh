#!/usr/bin/env bash

function main(){
    change_html
    git_update
    termux-toast -c green "Site atualizado"
}

function get_projecao(){
    readonly local execut=$(~/cison/html/proj-br/scripts/request_data.py)
    readonly local _value=$(cat ~/cison/html/proj-br/data/data.txt)
    echo $_value
}

function change_html(){
    readonly local _file=~/cison/html/proj-br/index.html
    readonly local _pattern="id=\"value.*h1>"
    readonly local _value=$(get_projecao)
    readonly local _command_sed=$(sed -i "s/$_pattern/id=\"value\">$_value<\/h1>/g" $_file)
    $_command_sed
}

function git_update(){
   local commando=$(~/cison/html/proj-br/temp.sh)
}


main
