#!/usr/bin/env bash

function main(){
    change_html
    git_update
}

function get_projecao(){
    readonly local _value=$(curl -X GET https://servicodados.ibge.gov.br/api/v1/projecoes/populacao/BR | jq '.projecao.populacao')
    echo $_value
}

function change_html(){
    readonly local _file=~/cison/html/proj-br/index.html
    readonly local _pattern='[0-9]\{2,\}'
    readonly local _value=$(get_projecao)
    readonly local _command_sed=$(sed -i 's/[0-9]\{2,\}/'"$_value"'/g' $_file)
}

function git_update(){
    cd ~/cison/html/proj-br/
    git add .
    git commit -m "atualiza projecao"
    git push
#    local commando=$(~/cison/html/proj-br/temp.sh)
    termux-toast -c green "Site atualizado"
}

main



