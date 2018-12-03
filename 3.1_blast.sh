#line
nohup blastn -perc_identity 80 -task blastn -query data/results/clustered_line.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 50 > data/results/blast_clustered_line.csv  &

#sine
nohup blastn -perc_identity 80 -task blastn -query data/results/clustered_sine.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 80 > data/results/blast_clustered_sine.csv  &

#mites
nohup blastn -perc_identity 80 -task blastn -query data/results/clustered_mite.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 80 > data/results/blast_clustered_mite.csv  &

#tirs
nohup blastn -perc_identity 80 -task blastn -query data/results/clustered_tir.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 50 > data/results/blast_clustered_tir.csv  &

#helitrons
nohup blastn -perc_identity 80 -task blastn -query data/results/clustered_helitron.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 50 > data/results/blast_clustered_helitron.csv  &

#LTRs
nohup blastn -perc_identity 80 -query data/results/clustered_ltr.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 50 > data/results/blast_clustered_ltr.csv  &

#TRIM
nohup blastn -perc_identity 80 -query data/results/clustered_trim.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 80 > data/results/blast_clustered_trim.csv  &

#LARD
nohup blastn -perc_identity 80 -query data/results/clustered_lard.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 50 > data/results/blast_clustered_lard.csv  &