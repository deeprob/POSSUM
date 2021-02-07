set -uex

feature_type=$1

input_fasta_file='../../Enzyme-Promiscuity-Prediction/data/SeqFile/EnzymeFasta.fa'
#input_fasta_testfile='../../Enzyme-Promiscuity-Prediction/data/SeqFile/TestEnzymeFasta.fa'

mkdir -p '../../Enzyme-Promiscuity-Prediction/featEngg/pssmMethods/data/featfiles/trainfiles/'
#mkdir -p '../../Enzyme-Promiscuity-Prediction/featEngg/pssmMethods/data/featfiles/testfiles/'

output_fasta_file='../../Enzyme-Promiscuity-Prediction/featEngg/pssmMethods/data/featfiles/trainfiles/'$feature_type'.csv'
#output_fasta_testfile='../../Enzyme-Promiscuity-Prediction/featEngg/pssmMethods/data/featfiles/testfiles/'$feature_type'.csv'

#echo $output_fasta_file

input_pssm_dir='../../Enzyme-Promiscuity-Prediction/featEngg/pssmMethods/data/pssmProfiles/trainfiles/'
#input_pssm_testdir='../../Enzyme-Promiscuity-Prediction/featEngg/pssmMethods/data/pssmProfiles/testfiles/'

perl possum_standalone.pl -i $input_fasta_file -o $output_fasta_file -t $feature_type -p $input_pssm_dir -h T
#perl possum_standalone.pl -i $input_fasta_testfile -o $output_fasta_testfile -t $feature_type -p $input_pssm_testdir -h T
