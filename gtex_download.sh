if [ $# -lt 6 ]
then 
echo "GTEx Data Download Script, writteh by Harry Yang - harry2416@gmail.com"
echo "[1] the sample file - e.g. gtex_9777_samples.sample" 
echo "[2] the target directory for script"
echo "[3] the download token from NCBI dbGaP - e.g. AF54A1549..." 
echo "[4] aspera dir - e.g. /u/home/h/harryyan/.aspera/connect/"
echo "[5] dump dir - the downloaded files will be stored here"
echo "[6] request ID - e.g. 46715"
exit 1 
fi 

pwd

target=$5
mkdir $target
dir=$2
mkdir $dir
cd $dir




while read line 
do 
item=$(echo $line | awk -F '/' '{print $6}' | awk -F '.ncbi_enc' '{print $1}')
itemname=$(echo $item | awk -F '.' '{print $1}')
echo $line
echo $item
echo $itemname

echo "\"${4}/bin/ascp\" -QTr -l 5000M -k 1 -i \"${4}/etc/asperaweb_id_dsa.openssh\" -W ${3} dbtest@gap-upload.ncbi.nlm.nih.gov:data/instant/eeskin/$6/${line} ${target}">> download_${itemname}.sh 
echo "echo \"DONE ${itemname}\"">> download_${itemname}.sh 
done<$1
