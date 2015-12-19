Download Script from dbGaP

Dependencies: 

Aspera Connect installed in your terminal 



INPUT: 

Designated Directory for the download and the scripts
Sample file - directory of the designated files in the database
	- can be extracted using tissues
	- To be added 
Download Request ID (i.e. 5 digit number)
Download Request Key - usually followed by -W ADD33B...... in the command line download supplied by dbGaP 
Aspera Directory 

OUTPUT: 

It will generate download script for each file - i.e. download_G22223.sh will download G22223.GTEX-G333.XXXX-XXXXXX.bam.ncbi_enc files 

USAGE: 

you will need to download it interactively on dtn1 or dtn2 on hoffman.
What I would recommend is:
	Make all.sh file using:
		ls *sh | awk '{print "./"$1}' >> all.sh 
		#divide all.sh into 4 or 5
		#open multiple tabs to dtn1 and dtn2 
		#run each dividied all.sh in each tab.

If any questions, please contact Harry Yang - harry2416@gmail.com 