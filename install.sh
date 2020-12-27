#!/bin/bash
#
# author: therojam
# authoremail: github@therojam.tech
#
# get rc3 resentation && update submodules 
# 

macos_hint="Since you are using macOS, please remind the dependencies as described in the README.md and check your \$PATH!"
linux_hint="Please remind the dependencies as described in the README.md and have fun!"

git_repo="https://github.com/hacker-coop/rc3-presentation.git"

git_path="$(echo $git_repo | awk -F '[/.]' '{print $(NF-1)}')"

# 0. check for OS
system=$(uname)

# 1. clone repo with submodules
echo "\t ## now cloning $git_repo \t ##"
git clone --recursive $git_repo 

# 2. update submodules
echo "\t update submodules"
cd $repo_path 
git submodule update

# 3. macos users get a hint for $PATH and MacTeX
if ($system == Darwin); then
	echo $macos_hint
else
	echo $linux_hint
fi

exit 0

# 
# vim: ai et sts=4 ts=4 sw=4
