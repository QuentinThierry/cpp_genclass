#!/bin/bash

SHELL_NAME=$(echo "$SHELL" | rev | cut -d'/' -f1 | rev)
SHELL_RC="$HOME/.$SHELL_NAME"rc

mkdir "$HOME"/.cpp_genclass
if [ $? != 0 ]
then
	echo "[LOG] - Aborting genclass installation"
	exit
fi
mv -f -t "$HOME"/.cpp_genclass/ genclass LICENSE class_cpp_template class_hpp_template main_cpp_template README.md

echo -e "\n""export PATH=\$PATH:$HOME/.cpp_genclass" >> "$SHELL_RC"
SHELL_LINE_ADDED=$(cat "$SHELL_RC" | wc -l)
source $SHELL_NAME
rm -f install.sh

echo "[LOG] - cpp_class generator has been successfully installed"
echo "[LOG] - PATH env variable has been modified, see $SHELL_RC line $SHELL_LINE_ADDED"
echo "[LOG] - Try 'genclass --help' to ensure the installation worked"