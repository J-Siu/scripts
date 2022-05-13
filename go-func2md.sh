#!bash

TITLE_PREFIX="####"

for FILENAME in ${@}; do
	echo ${TITLE_PREFIX} ${FILENAME}
	FUNC=$(grep -e ^func -e ^var -e ^type ${FILENAME})

	while IFS= read -r LINE; do
		echo "-" ${LINE%% \{}
	done <<<${FUNC}

done
