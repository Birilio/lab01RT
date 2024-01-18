cd lab01/lab01RT/N-Queens-Problem-master
python3 queenpool_multithread.py multithread_output.csv 12 4 100
python3 queenpool_multithread.py singlethread_output.csv 12 1 100
cd ../rt-tests
sudo cyclictest -l50000000 -m -S -p90 -i200 -h400 -q > output.txt 
grep -v -e "^#" -e "^$" output.txt | tr " " "," | tr "\t" "," >histogram.csv 
sed -i '1s/^/time,core1,core2,core3,core4\n /' histogram.csv