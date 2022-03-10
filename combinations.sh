#!/bin/bash
# resouces
# http://stackoverflow.com/questions/3846123/generating-permutations-using-bash
# http://stackoverflow.com/questions/17762764/generate-all-possible-combinations-of-a-function-call-using-bash-script

printf "# %s\n" {fontawesome,},{octicons,},{fontlinux,},{pomicons,},{powerlineextra,}


printf "# - %s\n" --{fontawesome,}--{octicons,}--{fontlinux,}--{pomicons,}--{powerlineextra,}


perm() {
  local items="$1"
  local out="$2"
  local i
  [[ "$items" == "" ]] && echo "$out" && return
  for (( i=0; i<${#items}; i++ )) ; do
    perm "${items:0:i}${items:i+1}" "$out${items:i:1}"
    done
  }
while read line ; do perm $line ; done < File


echo --{fa,}{o,} 
printf "--{fa,}{o,}"

printf " %s\n" {fa,}{o,}

printf " %s\n" --{fontawesome,}{octicons,}{fontlinux,}{pomicons,},{powerlineextra,},{fontawesomeextension,}

# this seems to be working:
printf " %s\n" {--fontawesome,}\ {--octicons,}

# too many spaces:
printf " %s\n" {--fontawesome,}\ {--octicons,}\ {--fontlinux,}\ {--pomicons,}\ {--powerlineextra,}\ {--fontawesomeextension,}

# try to eliminate build up of spaces:

printf " %s\n" {' --fontawesome',}{' --octicons',}{--fontlinux,}{--pomicons,}{--powerlineextra,}{--fontawesomeextension,}

# lookin' good:
printf " %s\n" {' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}

# get the num of combinations counted:
printf " %s\n" {' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',} | wc -l

# add mono and windows options:
printf " %s\n" {' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}

printf " %s\n" {' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',} | wc -l

# get it ready for patcher format:
printf " %s\n" {' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}

# this is gettin crazy :D
printf "./font-patcher %s\n" {' --powerline',}{' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',}

printf "./font-patcher %s\n" {' --powerline',}{' --use-single-width-glyphs',}{' --windows',}{' --fontawesome',}{' --octicons',}{' --fontlinux',}{' --pomicons',}{' --powerlineextra',}{' --fontawesomeextension',}{' --powersymbols',} | wc -l
