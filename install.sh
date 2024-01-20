#!/bin/bash

cd cpp_genclass/
SHELL_NAME=$(echo "$SHELL" | rev | cut -d'/' -f1 | rev)
SHELL_RC="$HOME/.$SHELL_NAME"rc

mkdir "$HOME"/.cpp_genclass
if [ $? != 0 ]
then
	echo "[LOG] - Aborting genclass installation -- fix problems and restart with 'bash install.sh"
	exit 1
fi
mv -f -t "$HOME"/.cpp_genclass/ genclass LICENSE class_cpp_template class_hpp_template main_cpp_template README.md

cat "$SHELL_RC" | grep "export PATH=\$PATH:$HOME/.cpp_genclass" > /dev/null
if [ $? != 0 ]
then
	echo -e "\n""export PATH=\$PATH:$HOME/.cpp_genclass" >> "$SHELL_RC"
	SHELL_LINE_ADDED=$(cat "$SHELL_RC" | wc -l)
	echo "[LOG] - PATH export variable has been added, see $SHELL_RC line $SHELL_LINE_ADDED"
else
	echo "[LOG] - PATH export variable has not been added because it already exists in $SHELL_RC"
fi
rm -f install.sh

echo "[LOG] - cpp_class generator has been successfully installed"
echo "[LOG] - Try 'genclass --help' to ensure the installation worked (you might need to restart terminal or 'source' your shell)"