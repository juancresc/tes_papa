mkdir data/results
rm -r data/results/clusters_line/ 2> /dev/null
mkdir data/results/clusters_line/
rm -r data/results/clusters_sine/ 2> /dev/null
mkdir data/results/clusters_sine/
rm -r data/results/clusters_mites/ 2> /dev/null
mkdir data/results/clusters_mites/
rm -r data/results/clusters_ltr/ 2> /dev/null
mkdir data/results/clusters_ltr/
rm -r data/results/clusters_helitrons/ 2> /dev/null
mkdir data/results/clusters_helitrons/
rm -r data/results/clusters_tirs/ 2> /dev/null
mkdir data/results/clusters_tirs/
rm -r data/results/clusters_trims/ 2> /dev/null
mkdir data/results/clusters_trims/
rm -r data/results/clusters_lards/ 2> /dev/null
mkdir data/results/clusters_lards/


#LINE
grep ">" data/results/seqs_line.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_line.fasta --threads 2 --strand both  --clusters data/results/clusters_line/c --iddef 1 -id 0.9 &

#SINE
grep ">" data/results/seqs_sine.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_sine.fasta --threads 2 --strand both  --clusters data/results/clusters_sine/c --iddef 1 -id 0.9 &

#LTR
grep ">" data/results/seqs_ltr.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_ltr.fasta --threads 2 --strand both  --clusters data/results/clusters_ltr/c --iddef 1 -id 0.9 &

#Helitrons
grep ">" data/results/seqs_helitrons.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_helitrons.fasta --threads 2 --strand both  --clusters data/results/clusters_helitrons/c --iddef 1 -id 0.9 & 

#TIRs
grep ">" data/results/seqs_tirs.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_tirs.fasta --threads 2 --strand both  --clusters data/results/clusters_tirs/c --iddef 1 -id 0.9 &

#LARDs
grep ">" data/results/seqs_lards.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_lards.fasta --threads 2 --strand both  --clusters data/results/clusters_lards/c --iddef 1 -id 0.9 &

#TRIMs
grep ">" data/results/seqs_trim.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_trim.fasta --threads 2 --strand both  --clusters data/results/clusters_trim/c --iddef 1 -id 0.9 &

#MITEs 
grep ">" data/results/seqs_mites.fasta | wc -l
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/seqs_mites.fasta --threads 2 --strand both  --clusters data/results/clusters_mites/c --iddef 1 -id 0.9 &

cd data/results
tar -zcvf clusters_ltr.tar.gz clusters_ltr/
tar -zcvf clusters_mites.tar.gz clusters_mites/
tar -zcvf clusters_line.tar.gz clusters_line/
tar -zcvf clusters_helitrons.tar.gz clusters_helitrons/
tar -zcvf clusters_tirs.tar.gz clusters_tirs/
tar -zcvf clusters_lard.tar.gz clusters_lard/
tar -zcvf clusters_sine.tar.gz clusters_sine/