#!/bin/sh

set -eu

domain="hilton.com"
path="/home/alienus/.Hacking/bugHunting/hilton/subdomains/hilton.com/all_subs/new_subs.txt"
notify_id="subs_notify"

subfinder -d "$domain" -o "$path" -all -silent
cat "$path" | anew  "$path" | notify -p discord -id "$notify_id" -silent
rm "$path"
