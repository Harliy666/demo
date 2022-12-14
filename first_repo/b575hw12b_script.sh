echo "#== SCRIPT STARTED"
awk 'NR % 4 == 2' sample.fastq > sample_rseq.txt
awk 'NR % 4 == 2' sample_cutadapt.fastq > sample_cutadapt_rseq.txt
echo "#== RETRIEVE READ SEQUENCE DONE"
sed 's/AGATCGGAAGA.*//' sample_rseq.txt > sample_rseq_CUT.txt
echo "#== CUT ADAPTER DONE"
diff sample_rseq.txt sample_rseq_CUT.txt
echo "#== SCRIPT DONE"

echo "The last time the script was ran is $(date)"
