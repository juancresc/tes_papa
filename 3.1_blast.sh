#line
nohup blastn -perc_identity 80 -task blastn -query data/results/line_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 40 > data/results/line_clustered.blast.csv  &

#sine
nohup blastn -perc_identity 80 -task blastn -query data/results/sine_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 40 > data/results/sine_clustered.blast.csv  &

#mites
nohup blastn -perc_identity 80 -task blastn -query data/results/mites_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 80 > data/results/mites_clustered.blast.csv  &

#tirs
nohup blastn -perc_identity 80 -task blastn -query data/results/tirs_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 40 > data/results/tirs_clustered.blast.csv  &

#helitrons
nohup blastn -perc_identity 80 -task blastn -query data/results/helitrons_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 40 > data/results/helitrons_clustered.blast.csv  &

#LTRs
nohup blastn -perc_identity 80 -query data/results/ltr_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 40 > data/results/ltr_clustered.blast.csv  &

#TRIM
nohup blastn -perc_identity 80 -query data/results/trim_clustered.fasta -subject  data/fasta/potato_dm_v404_all_pm_un.fasta  -outfmt '6 qseqid sseqid qstart qend sstart send score length mismatch gaps gapopen nident pident qlen slen qcovs' -evalue 10e-3 -qcov_hsp_perc 40 > data/results/trim_clustered.blast.csv  &