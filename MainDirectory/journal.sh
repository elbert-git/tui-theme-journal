#/bin/sh

# --- functions
main_program () {
	# --- get today's date
	TODAY=$(python3 ./JournalModules/GetDate.py)
	 
	# --- check if journal file exists for current date
	if [ -f "./JournalLogs/${TODAY}.md" ]
	then #file exists
		#open the file in vim
		vim ./JournalLogs/${TODAY}.md
	else #file doesnt exist
		#create a file with proper name
		touch ./JournalLogs/${TODAY}.md
		#cat template into file 
		cat ./JournalConfigs/CurrentTemplate > ./JournalLogs/${TODAY}.md
		#open file in vim
		vim ./JournalLogs/${TODAY}.md
	fi
}

main_program
