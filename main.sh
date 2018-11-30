jupyter nbconvert --to python 1.1_add_annotation.ipynb
python 1.1_add_annotation.py -te_type $1

#sh 2.1_vsearch.sh

jupyter nbconvert --to python 2.1_vsearch.ipynb
python 2.1_vsearch.py -te_type $1

sh 3.1_blast.sh

jupyter nbconvert --to python 3.2_blast_filter.ipynb
python 3.2_blast_filter.py -te_type $1