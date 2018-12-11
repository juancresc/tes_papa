echo "" > data/results/coverage.txt
grep "TRIM" data/results/all.gff > data/results/all_trim.gff
grep "LINE" data/results/all.gff > data/results/all_line.gff
grep "SINE" data/results/all.gff > data/results/all_sine.gff
grep "MITE" data/results/all.gff > data/results/all_mite.gff
grep "LARD" data/results/all.gff > data/results/all_lard.gff
grep "LTR" data/results/all.gff > data/results/all_ltr.gff
grep "helitron" data/results/all.gff > data/results/all_helitron.gff
grep "TIR" data/results/all.gff > data/results/all_tir.gff

python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_trim.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_line.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_sine.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_mite.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_lard.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_ltr.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_helitron.gff >> data/results/coverage.txt
python gff2coverage.py -r data/Stuberosum_genome.gff3 -a data/results/all_tir.gff >> data/results/coverage.txt

