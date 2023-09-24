#!/bin/bash



# environment variables
# ---------------------------------------
OUTPUT_FILENAME="output.txt"

LEXICON_CONF_FILE=""
LEXICON_LIST=""

SSML_CONF_FILE="ssml.conf"
SSML_LIST=""
# ---------------------------------------


function show_help()
{
	echo "Usage: ./$(basename ${BASH_SOURCE}) filename [options]"
	echo ""
	echo "Arguments:"
	echo "    filename: specify input normal text filename"
	echo ""
	echo "Options:"
	echo "    -h | --help : show this message"
	echo "    -l | --lexicon (filename) : embed lexicon configuration in ssml with specified file (default: no use)"
	echo "    -s | --ssml (filename) : load ssml configuration with specified file (default: ssml.conf)"
	echo "    -o | --output (filename) : specify filename converted ssml from text (default: output.txt)"

	exit 0
}

function get_second_arg()
{
	if [ $# -lt 1 ] || [ ${2:0:1} == '-' ]; then
		echo "Option $1 needs additional arguments"
		echo "(Note: Arguments cannot start form character '-')"
		show_help
	fi

	echo $2
}

function interpret_lexicon()
{
	:
}

function interpret_ssml()
{
	:
}

function output_ssml()
{
	:
}


while [ $# -ne 0 ];
do
	case $1 in
		-h | --help )
			show_help
			;;
		-l | --lexicon )
			LEXICON_CONF_FILE=$(get_second_arg $@)
			echo LEXICON_CONF_FILE: $LEXICON_CONF_FILE
			shift 2
			;;
		-s | --ssml )
			SSML_CONF_FILE=$(get_second_arg $@)
			echo SSML_CONF_FILE: $SSML_CONF_FILE
			shift 2
			;;
		*)
			echo "Unkown param: $1"
			show_help
			;;
	esac
done









