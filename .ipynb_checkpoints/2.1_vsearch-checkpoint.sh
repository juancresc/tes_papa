#TIRs
mkdir data/results
rm -r data/results/clusters_tirs/
mkdir data/results/clusters_tirs/
grep ">" data/results/tirs.fasta | wc -l
4074
./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/tirs.fasta --threads 10 --strand both  --clusters data/results/clusters_tirs/c --iddef 1 -id 0.9 --msaout data/results/tirs_vsearch.fasta

cd data/results
tar -zcvf clusters_tirs.tar.gz clusters_tirs/

#MITEs 
mkdir data/results
rm -r data/results/clusters_mites/
mkdir data/results/clusters_mites/

grep ">" data/results/mites.fasta | wc -l
4074

./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/mites.fasta --threads 10 --strand both  --clusters data/results/clusters_mites/c --iddef 1 -id 0.9 --msaout data/results/mites_vsearch.fasta

# --msaout out??
vsearch v2.9.1_linux_x86_64, 16.0GB RAM, 16 cores
https://github.com/torognes/vsearch

Reading file data/results/mites.fasta 100%  
1397169 nt in 4074 seqs, min 50, max 902, avg 343
Masking 100%  
Sorting by length 100%
Counting k-mers 100%  
Clustering 100%  
Sorting clusters 100%
Writing clusters 100%  
Clusters: 2542 Size min 1, max 84, avg 1.6
Singletons: 2174, 53.4% of seqs, 85.5% of clusters


cd data/results
tar -zcvf clusters_mites.tar.gz clusters_mites/