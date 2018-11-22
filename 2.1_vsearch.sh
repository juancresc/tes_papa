#LINE
mkdir data/results
rm -r data/results/clusters_line/
mkdir data/results/clusters_line/
grep ">" data/results/line.fasta | wc -l
67
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/line.fasta --threads 5 --strand both  --clusters data/results/clusters_line/c --iddef 1 -id 0.9 &
cd data/results
tar -zcvf clusters_line.tar.gz clusters_line/
#output
Reading file data/results/line.fasta 100%
301690 nt in 67 seqs, min 793, max 15238, avg 4503
Masking 100%
Sorting by length 100%
Counting k-mers 100%
Clustering 100%
Sorting clusters 100%
Writing clusters 100%
Clusters: 65 Size min 1, max 2, avg 1.0
Singletons: 63, 94.0% of seqs, 96.9% of clusters


#SINE
mkdir data/results
rm -r data/results/clusters_sine/
mkdir data/results/clusters_sine/
grep ">" data/results/sine.fasta | wc -l
30
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/sine.fasta --threads 5 --strand both  --clusters data/results/clusters_sine/c --iddef 1 -id 0.9 &
cd data/results
tar -zcvf clusters_sine.tar.gz clusters_sine/

#output
Reading file data/results/sine.fasta 100%  
7012 nt in 30 seqs, min 114, max 575, avg 234
Masking 100% 
Sorting by length 100%
Counting k-mers 100% 
Clustering 100%  
Sorting clusters 100%
Writing clusters 100% 
Clusters: 24 Size min 1, max 3, avg 1.2
Singletons: 20, 66.7% of seqs, 83.3% of clusters



#Ltrs
mkdir data/results
rm -r data/results/clusters_ltr/
mkdir data/results/clusters_ltr/
grep ">" data/results/ltr.fasta | wc -l
8711
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/ltr.fasta --threads 10 --strand both  --clusters data/results/clusters_ltr/c --iddef 1 -id 0.9 &
Reading file data/results/ltr.fasta 100%
69661346 nt in 8709 seqs, min 123, max 49111, avg 7999
maxseqlength 50000: 2 sequences discarded.
Masking 100%
Sorting by length 100%
Counting k-mers 100%
Clustering 100%
Sorting clusters 100%
Writing clusters 100%
Clusters: 8359 Size min 1, max 8, avg 1.0
Singletons: 8129, 93.3% of seqs, 97.2% of clusters

cd data/results
tar -zcvf clusters_ltr.tar.gz clusters_ltr/

#Helitrons
mkdir data/results
rm -r data/results/clusters_helitrons/
mkdir data/results/clusters_helitrons/
grep ">" data/results/helitrons.fasta | wc -l
1330
nohup ./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/helitrons.fasta --threads 10 --strand both  --clusters data/results/clusters_helitrons/c --iddef 1 -id 0.9 &

Reading file data/results/helitrons.fasta 100%
10726073 nt in 1330 seqs, min 202, max 19966, avg 8065
Masking 100%
Sorting by length 100%
Counting k-mers 100%
Clustering 100%
Sorting clusters 100%
Writing clusters 100%
Clusters: 1322 Size min 1, max 3, avg 1.0
Singletons: 1315, 98.9% of seqs, 99.5% of clusters


cd data/results
tar -zcvf clusters_helitrons.tar.gz clusters_helitrons/


#TIRs
mkdir data/results
rm -r data/results/clusters_tirs/
mkdir data/results/clusters_tirs/
grep ">" data/results/tirs.fasta | wc -l
2540
./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/tirs.fasta --threads 10 --strand both  --clusters data/results/clusters_tirs/c --iddef 1 -id 0.9

Reading file data/results/tirs.fasta 100%
5466783 nt in 2540 seqs, min 119, max 24520, avg 2152
Masking 100%
Sorting by length 100%
Counting k-mers 100%
Clustering 100%
Sorting clusters 100%
Writing clusters 100%
Clusters: 2307 Size min 1, max 27, avg 1.1
Singletons: 2198, 86.5% of seqs, 95.3% of clusters

cd data/results
tar -zcvf clusters_tirs.tar.gz clusters_tirs/

#MITEs 
mkdir data/results
rm -r data/results/clusters_mites/
mkdir data/results/clusters_mites/

grep ">" data/results/mites.fasta | wc -l
4074

./sw/vsearch-2.9.1/bin/vsearch --cluster_fast  data/results/mites.fasta --threads 10 --strand both  --clusters data/results/clusters_mites/c --iddef 1 -id 0.9
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