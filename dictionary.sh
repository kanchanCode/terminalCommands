#!/bin/bash -x
declare -A sounds

#Dictionary<string,object> s= new Dictionary<stri

sounds[dog]="bark"
sounds[wolf]="howl"
sounds[cow]="moo"
sounds[bird]="tweet"
echo "Dog Sound : " ${sounds[dog]}
echo "All animal sound :" ${sounds[@]}
echo "Animal " ${!sounds[@]}
echo "number of animals " ${#sounds[@]}
unset sounds[dog]
